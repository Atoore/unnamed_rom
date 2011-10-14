.class public Landroid/server/BluetoothService;
.super Landroid/bluetooth/IBluetooth$Stub;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/server/BluetoothService$Reaper;,
        Landroid/server/BluetoothService$BondState;,
        Landroid/server/BluetoothService$EnableThread;,
        Landroid/server/BluetoothService$RemoteService;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final BLUETOOTH_PROPERTY_SECURITY_POLICY:Ljava/lang/String; = "service.bt.security.policy.mode"

.field private static final BRCM_PROPERTY_AVRCP_PASS_THROUGH_ACTIVE:Ljava/lang/String; = "service.brcm.bt.avrcp_pass_thru"

.field private static final BRCM_PROPERTY_BTLD_ACTIVE:Ljava/lang/String; = "service.brcm.bt.btld"

.field private static final BRCM_PROPERTY_BT_ACTIVATION:Ljava/lang/String; = "service.brcm.bt.activation"

.field private static final BRCM_PROPERTY_SOFT_ONOFF_ENABLE:Ljava/lang/String; = "service.brcm.bt.soft_onoff"

.field private static final DBG:Z = true

.field private static final DOCK_ADDRESS_PATH:Ljava/lang/String; = "/sys/class/switch/dock/bt_addr"

.field private static final DOCK_PIN_PATH:Ljava/lang/String; = "/sys/class/switch/dock/bt_pin"

.field private static final DTUN_PROPERTY_HCID_ACTIVE:Ljava/lang/String; = "service.brcm.bt.hcid_active"

.field private static final DTUN_PROPERTY_SERVER_ACTIVE:Ljava/lang/String; = "service.brcm.bt.srv_active"

.field private static final INIT_AUTO_PAIRING_FAILURE_ATTEMPT_DELAY:J = 0xbb8L

.field public static final INTENT_MSG_DCMO_BT:Ljava/lang/String; = "com.sktelecom.dmc.intent.action.DCMO_BT_SET"

.field private static final IN_CALL_ACTIVE_AVRCP_PASS_THROUGH_TIMEOUT:J = 0x1388L

.field private static final IN_CALL_INACTIVE_AVRCP_PASS_THROUGH_TIMEOUT:J = 0x1388L

.field private static final MAX_AUTO_PAIRING_FAILURE_ATTEMPT_DELAY:J = 0x2ee0L

.field private static final MESSAGE_AUTO_PAIRING_FAILURE_ATTEMPT_DELAY:I = 0x5

.field private static final MESSAGE_AVRCP_PASS_THROUGH_TIMEOUT:I = 0x7

.field private static final MESSAGE_BT_BOOTUP:I = 0x6

.field private static final MESSAGE_BT_IT_POLICY:I = 0x9

.field private static final MESSAGE_DISCOVERABLE_TIMEOUT:I = 0x4

.field private static final MESSAGE_FINISH_DISABLE:I = 0x2

.field private static final MESSAGE_MOBILE_OFFICE_BT_ON:I = 0xa

.field private static final MESSAGE_PROFILE_DISCONNECT_TIMEOUT:I = 0x8

.field private static final MESSAGE_REGISTER_SDP_RECORDS:I = 0x1

.field private static final MESSAGE_UUID_INTENT:I = 0x3

.field public static final NOTIFICATION_ID:I = 0x1080080

.field private static final REMOTE_NAME_CACHE_TIMEOUT:J = 0x1f4L

.field private static final RFCOMM_UUIDS:[Landroid/os/ParcelUuid; = null

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "bluetooth_service_settings"

.field private static final SHARED_PREFERENCE_DOCK_ADDRESS:Ljava/lang/String; = "dock_bluetooth_address"

.field private static final TAG:Ljava/lang/String; = "BluetoothService"

.field private static final UUID_INTENT_DELAY:I = 0x1770

.field private static mDockAddress:Ljava/lang/String;

.field private static mPolicy:I


# instance fields
.field private final DEFAULT_IMEI:Ljava/lang/String;

.field private final IMEI:Ljava/lang/String;

.field private final mA2dpProfileState:Landroid/bluetooth/BluetoothProfileState;

.field private mA2dpService:Landroid/server/BluetoothA2dpService;

.field private mAclLinkCount:I

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mAdapterProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAlarmService:Landroid/app/AlarmManager;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBluetoothState:I

.field private final mBondState:Landroid/server/BluetoothService$BondState;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceOobData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<[B[B>;>;"
        }
    .end annotation
.end field

.field private final mDeviceProfileState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/BluetoothDeviceProfileState;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDeviceServiceChannelCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Landroid/os/ParcelUuid;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDisableSaveSetting:Z

.field private mDiscoveryAlarmIntent:Landroid/app/PendingIntent;

.field private mDockPin:Ljava/lang/String;

.field private mEnableThread:Landroid/server/BluetoothService$EnableThread;

.field private mEventLoop:Landroid/server/BluetoothEventLoop;

.field private final mHandler:Landroid/os/Handler;

.field private final mHfpProfileState:Landroid/bluetooth/BluetoothProfileState;

.field private mIsAirplaneSensitive:Z

.field private mIsAirplaneToggleable:Z

.field private mIsDiscovering:Z

.field private mLastRemoteAddress:Ljava/lang/String;

.field private mLastRemoteMs:J

.field private mLastRemoteName:Ljava/lang/String;

.field private mNativeData:I

.field private mNotiManager:Landroid/app/NotificationManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestart:Z

.field private final mServiceRecordToPid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mUuidCallbackTracker:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/server/BluetoothService$RemoteService;",
            "Landroid/bluetooth/IBluetoothCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mUuidIntentTracker:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWaitingForA2dpDisconnected:Z

.field private mWaitingForAclDisconnected:Z

.field private mWaitingForHeadsetDisconnected:Z

.field private mWaitingForHidDisconnected:Z

.field private prevScanMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x2

    .line 169
    sput v3, Landroid/server/BluetoothService;->mPolicy:I

    .line 209
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/os/ParcelUuid;

    const/4 v1, 0x0

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    aput-object v1, v0, v3

    sput-object v0, Landroid/server/BluetoothService;->RFCOMM_UUIDS:[Landroid/os/ParcelUuid;

    .line 274
    invoke-static {}, Landroid/server/BluetoothService;->classInitNative()V

    .line 275
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 277
    invoke-direct {p0}, Landroid/bluetooth/IBluetooth$Stub;-><init>()V

    .line 123
    iput-boolean v2, p0, Landroid/server/BluetoothService;->mRestart:Z

    .line 140
    new-instance v0, Landroid/server/BluetoothService$BondState;

    invoke-direct {v0, p0}, Landroid/server/BluetoothService$BondState;-><init>(Landroid/server/BluetoothService;)V

    iput-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    .line 202
    const-string/jumbo v0, "ril.IMEI"

    iput-object v0, p0, Landroid/server/BluetoothService;->IMEI:Ljava/lang/String;

    .line 203
    const-string v0, "357858010034783"

    iput-object v0, p0, Landroid/server/BluetoothService;->DEFAULT_IMEI:Ljava/lang/String;

    .line 241
    iput-object v3, p0, Landroid/server/BluetoothService;->mNotiManager:Landroid/app/NotificationManager;

    .line 899
    new-instance v0, Landroid/server/BluetoothService$1;

    invoke-direct {v0, p0}, Landroid/server/BluetoothService$1;-><init>(Landroid/server/BluetoothService;)V

    iput-object v0, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    .line 2665
    new-instance v0, Landroid/server/BluetoothService$2;

    invoke-direct {v0, p0}, Landroid/server/BluetoothService$2;-><init>(Landroid/server/BluetoothService;)V

    iput-object v0, p0, Landroid/server/BluetoothService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 278
    iput-object p1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    .line 284
    const-string v0, "batteryinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Landroid/server/BluetoothService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 286
    invoke-direct {p0}, Landroid/server/BluetoothService;->initializeNativeDataNative()V

    .line 288
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledNative()I

    move-result v0

    if-ne v0, v4, :cond_49

    .line 289
    const-string v0, "BluetoothService"

    const-string v1, "Bluetooth daemons already running - runtime restart? "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-direct {p0}, Landroid/server/BluetoothService;->disableNative()I

    .line 293
    :cond_49
    const/16 v0, 0xa

    iput v0, p0, Landroid/server/BluetoothService;->mBluetoothState:I

    .line 294
    iput-boolean v2, p0, Landroid/server/BluetoothService;->mIsDiscovering:Z

    .line 295
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothService;->mAdapterProperties:Ljava/util/Map;

    .line 296
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothService;->mDeviceProperties:Ljava/util/HashMap;

    .line 298
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothService;->mDeviceServiceChannelCache:Ljava/util/HashMap;

    .line 299
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothService;->mDeviceOobData:Ljava/util/HashMap;

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothService;->mUuidIntentTracker:Ljava/util/ArrayList;

    .line 301
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    .line 302
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    .line 303
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    .line 304
    new-instance v0, Landroid/bluetooth/BluetoothProfileState;

    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v4}, Landroid/bluetooth/BluetoothProfileState;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/server/BluetoothService;->mA2dpProfileState:Landroid/bluetooth/BluetoothProfileState;

    .line 305
    new-instance v0, Landroid/bluetooth/BluetoothProfileState;

    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/BluetoothProfileState;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/server/BluetoothService;->mHfpProfileState:Landroid/bluetooth/BluetoothProfileState;

    .line 308
    iput v2, p0, Landroid/server/BluetoothService;->mAclLinkCount:I

    .line 309
    iput-boolean v2, p0, Landroid/server/BluetoothService;->mWaitingForHeadsetDisconnected:Z

    .line 310
    iput-boolean v2, p0, Landroid/server/BluetoothService;->mWaitingForA2dpDisconnected:Z

    .line 311
    iput-boolean v2, p0, Landroid/server/BluetoothService;->mWaitingForHidDisconnected:Z

    .line 312
    iput-boolean v2, p0, Landroid/server/BluetoothService;->mWaitingForAclDisconnected:Z

    .line 314
    iput-object v3, p0, Landroid/server/BluetoothService;->mLastRemoteAddress:Ljava/lang/String;

    .line 315
    iput-object v3, p0, Landroid/server/BluetoothService;->mLastRemoteName:Ljava/lang/String;

    .line 316
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/server/BluetoothService;->mLastRemoteMs:J

    .line 320
    iput-object v3, p0, Landroid/server/BluetoothService;->mAlarmService:Landroid/app/AlarmManager;

    .line 321
    iput-object v3, p0, Landroid/server/BluetoothService;->mDiscoveryAlarmIntent:Landroid/app/PendingIntent;

    .line 324
    iget-object v0, p0, Landroid/server/BluetoothService;->mHfpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothProfileState;->start()V

    .line 325
    iget-object v0, p0, Landroid/server/BluetoothService;->mA2dpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothProfileState;->start()V

    .line 334
    return-void
.end method

.method private declared-synchronized _setScanMode(II)Z
    .registers 12
    .parameter "mode"
    .parameter "duration"

    .prologue
    const/4 v6, 0x0

    const-string v3, "BluetoothService"

    .line 1700
    monitor-enter p0

    const/4 v2, 0x0

    .line 1701
    .local v2, pairable:Z
    const/4 v0, 0x0

    .line 1702
    .local v0, discoverable:Z
    :try_start_6
    invoke-direct {p0}, Landroid/server/BluetoothService;->setAlarmService()V

    .line 1703
    const-string v3, "BluetoothService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setScanMode is called "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    packed-switch p1, :pswitch_data_96

    .line 1739
    :pswitch_25
    const-string v3, "BluetoothService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requested invalid scan mode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_6 .. :try_end_3d} :catchall_92

    move v3, v6

    .line 1748
    :goto_3e
    monitor-exit p0

    return v3

    .line 1708
    :pswitch_40
    :try_start_40
    iget-object v3, p0, Landroid/server/BluetoothService;->mAlarmService:Landroid/app/AlarmManager;

    iget-object v4, p0, Landroid/server/BluetoothService;->mDiscoveryAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1709
    const/4 v2, 0x0

    .line 1710
    const/4 v0, 0x0

    .line 1742
    :goto_49
    const-string v3, "Pairable"

    invoke-direct {p0, v3, v2}, Landroid/server/BluetoothService;->setPropertyBoolean(Ljava/lang/String;Z)Z

    .line 1743
    const-string v3, "Discoverable"

    invoke-direct {p0, v3, v0}, Landroid/server/BluetoothService;->setPropertyBoolean(Ljava/lang/String;Z)Z

    .line 1745
    if-nez v2, :cond_5d

    if-nez v0, :cond_5d

    .line 1746
    const-string v3, "Powered"

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Landroid/server/BluetoothService;->setPropertyBoolean(Ljava/lang/String;Z)Z

    .line 1748
    :cond_5d
    const/4 v3, 0x1

    goto :goto_3e

    .line 1714
    :pswitch_5f
    iget-object v3, p0, Landroid/server/BluetoothService;->mAlarmService:Landroid/app/AlarmManager;

    iget-object v4, p0, Landroid/server/BluetoothService;->mDiscoveryAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1715
    const/4 v2, 0x1

    .line 1716
    const/4 v0, 0x0

    .line 1717
    goto :goto_49

    .line 1729
    :pswitch_69
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1730
    .local v1, intent:Landroid/content/Intent;
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1731
    iget-object v3, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x1000

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Landroid/server/BluetoothService;->mDiscoveryAlarmIntent:Landroid/app/PendingIntent;

    .line 1732
    iget-object v3, p0, Landroid/server/BluetoothService;->mAlarmService:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    mul-int/lit16 v7, p2, 0x3e8

    int-to-long v7, v7

    add-long/2addr v5, v7

    iget-object v7, p0, Landroid/server/BluetoothService;->mDiscoveryAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_8f
    .catchall {:try_start_40 .. :try_end_8f} :catchall_92

    .line 1733
    const/4 v2, 0x1

    .line 1734
    const/4 v0, 0x1

    .line 1735
    goto :goto_49

    .line 1700
    .end local v1           #intent:Landroid/content/Intent;
    :catchall_92
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1705
    nop

    :pswitch_data_96
    .packed-switch 0x14
        :pswitch_40
        :pswitch_5f
        :pswitch_25
        :pswitch_69
    .end packed-switch
.end method

.method static synthetic access$000(Landroid/server/BluetoothService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000()I
    .registers 1

    .prologue
    .line 113
    sget v0, Landroid/server/BluetoothService;->mPolicy:I

    return v0
.end method

.method static synthetic access$1002(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 113
    sput p0, Landroid/server/BluetoothService;->mPolicy:I

    return p0
.end method

.method static synthetic access$1100(Landroid/server/BluetoothService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/server/BluetoothService;->enableNative()I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Landroid/server/BluetoothService;)Landroid/server/BluetoothEventLoop;
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    return-object v0
.end method

.method static synthetic access$1300(Ljava/lang/String;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 113
    invoke-static {p0}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/server/BluetoothService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/server/BluetoothService;->disableNative()I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/server/BluetoothService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/server/BluetoothService;->setupNativeDataNative()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Landroid/server/BluetoothService;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->persistBluetoothOnSetting(Z)V

    return-void
.end method

.method static synthetic access$1702(Landroid/server/BluetoothService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    iput-boolean p1, p0, Landroid/server/BluetoothService;->mIsDiscovering:Z

    return p1
.end method

.method static synthetic access$1800(Landroid/server/BluetoothService;)Landroid/server/BluetoothService$BondState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/server/BluetoothService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/server/BluetoothService;->initProfileState()V

    return-void
.end method

.method static synthetic access$200(Landroid/server/BluetoothService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    iget-boolean v0, p0, Landroid/server/BluetoothService;->mDisableSaveSetting:Z

    return v0
.end method

.method static synthetic access$2000(Landroid/server/BluetoothService;)Lcom/android/internal/app/IBatteryStats;
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Landroid/server/BluetoothService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-object v0
.end method

.method static synthetic access$2102(Landroid/server/BluetoothService;Landroid/server/BluetoothService$EnableThread;)Landroid/server/BluetoothService$EnableThread;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    iput-object p1, p0, Landroid/server/BluetoothService;->mEnableThread:Landroid/server/BluetoothService$EnableThread;

    return-object p1
.end method

.method static synthetic access$2200(Landroid/server/BluetoothService;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->setBluetoothState(I)V

    return-void
.end method

.method static synthetic access$2300(Landroid/server/BluetoothService;II)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothService;->_setScanMode(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Landroid/server/BluetoothService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    iget v0, p0, Landroid/server/BluetoothService;->mBluetoothState:I

    return v0
.end method

.method static synthetic access$2500(Landroid/server/BluetoothService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/server/BluetoothService;->destroyNotification()V

    return-void
.end method

.method static synthetic access$2600(Landroid/server/BluetoothService;Ljava/lang/String;)Landroid/bluetooth/BluetoothDeviceProfileState;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->addProfileState(Ljava/lang/String;)Landroid/bluetooth/BluetoothDeviceProfileState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Landroid/server/BluetoothService;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->removeProfileState(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Landroid/server/BluetoothService;)Landroid/bluetooth/BluetoothAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$300(Landroid/server/BluetoothService;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->finishDisable(Z)V

    return-void
.end method

.method static synthetic access$3000(Landroid/server/BluetoothService;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothService;->checkAndRemoveRecord(II)V

    return-void
.end method

.method static synthetic access$3100(Landroid/server/BluetoothService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/server/BluetoothService;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 113
    sget-object v0, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3202(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .parameter "x0"

    .prologue
    .line 113
    sput-object p0, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3302(Landroid/server/BluetoothService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    iput-object p1, p0, Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3400(Landroid/server/BluetoothService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/server/BluetoothService;->displayNotification()V

    return-void
.end method

.method static synthetic access$400(Landroid/server/BluetoothService;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Landroid/server/BluetoothService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    iget-boolean v0, p0, Landroid/server/BluetoothService;->mWaitingForHeadsetDisconnected:Z

    return v0
.end method

.method static synthetic access$502(Landroid/server/BluetoothService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    iput-boolean p1, p0, Landroid/server/BluetoothService;->mWaitingForHeadsetDisconnected:Z

    return p1
.end method

.method static synthetic access$600(Landroid/server/BluetoothService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    iget-boolean v0, p0, Landroid/server/BluetoothService;->mWaitingForA2dpDisconnected:Z

    return v0
.end method

.method static synthetic access$602(Landroid/server/BluetoothService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    iput-boolean p1, p0, Landroid/server/BluetoothService;->mWaitingForA2dpDisconnected:Z

    return p1
.end method

.method static synthetic access$700(Landroid/server/BluetoothService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    iget-boolean v0, p0, Landroid/server/BluetoothService;->mWaitingForHidDisconnected:Z

    return v0
.end method

.method static synthetic access$702(Landroid/server/BluetoothService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    iput-boolean p1, p0, Landroid/server/BluetoothService;->mWaitingForHidDisconnected:Z

    return p1
.end method

.method static synthetic access$800(Landroid/server/BluetoothService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    iget-boolean v0, p0, Landroid/server/BluetoothService;->mWaitingForAclDisconnected:Z

    return v0
.end method

.method static synthetic access$900(Landroid/server/BluetoothService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    iget v0, p0, Landroid/server/BluetoothService;->mAclLinkCount:I

    return v0
.end method

.method static synthetic access$908(Landroid/server/BluetoothService;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 113
    iget v0, p0, Landroid/server/BluetoothService;->mAclLinkCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/server/BluetoothService;->mAclLinkCount:I

    return v0
.end method

.method static synthetic access$910(Landroid/server/BluetoothService;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 113
    iget v0, p0, Landroid/server/BluetoothService;->mAclLinkCount:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Landroid/server/BluetoothService;->mAclLinkCount:I

    return v0
.end method

.method private native addHidInfoNative(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private addProfileState(Ljava/lang/String;)Landroid/bluetooth/BluetoothDeviceProfileState;
    .registers 6
    .parameter "address"

    .prologue
    .line 3106
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3107
    .local v0, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v0, :cond_c

    move-object v1, v0

    .line 3112
    .end local v0           #state:Landroid/bluetooth/BluetoothDeviceProfileState;
    .local v1, state:Ljava/lang/Object;
    :goto_b
    return-object v1

    .line 3109
    .end local v1           #state:Ljava/lang/Object;
    .restart local v0       #state:Landroid/bluetooth/BluetoothDeviceProfileState;
    :cond_c
    new-instance v0, Landroid/bluetooth/BluetoothDeviceProfileState;

    .end local v0           #state:Landroid/bluetooth/BluetoothDeviceProfileState;
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/server/BluetoothService;->mA2dpService:Landroid/server/BluetoothA2dpService;

    invoke-direct {v0, v2, p1, p0, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/server/BluetoothService;Landroid/server/BluetoothA2dpService;)V

    .line 3110
    .restart local v0       #state:Landroid/bluetooth/BluetoothDeviceProfileState;
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3111
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->start()V

    move-object v1, v0

    .line 3112
    .restart local v1       #state:Ljava/lang/Object;
    goto :goto_b
.end method

.method private native addRfcommServiceRecordNative(Ljava/lang/String;JJS)I
.end method

.method private native authorizeServiceNative(Ljava/lang/String;II)Z
.end method

.method static bluezStringToScanMode(ZZ)I
    .registers 3
    .parameter "pairable"
    .parameter "discoverable"

    .prologue
    .line 2980
    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    .line 2981
    const/16 v0, 0x17

    .line 2985
    :goto_6
    return v0

    .line 2982
    :cond_7
    if-eqz p0, :cond_e

    if-nez p1, :cond_e

    .line 2983
    const/16 v0, 0x15

    goto :goto_6

    .line 2985
    :cond_e
    const/16 v0, 0x14

    goto :goto_6
.end method

.method private native cancelDeviceCreationNative(Ljava/lang/String;)Z
.end method

.method private native cancelPairingUserInputNative(Ljava/lang/String;I)Z
.end method

.method private declared-synchronized checkAndRemoveRecord(II)V
    .registers 7
    .parameter "handle"
    .parameter "pid"

    .prologue
    .line 2640
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 2641
    .local v0, handleInt:Ljava/lang/Integer;
    iget-object v2, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2642
    .local v1, owner:Ljava/lang/Integer;
    if-eqz v1, :cond_42

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p2, v2, :cond_42

    .line 2643
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing service record "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 2645
    iget-object v2, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2646
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->removeServiceRecordNative(I)Z
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_44

    .line 2648
    :cond_42
    monitor-exit p0

    return-void

    .line 2640
    .end local v0           #handleInt:Ljava/lang/Integer;
    .end local v1           #owner:Ljava/lang/Integer;
    :catchall_44
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNativeDataNative()V
.end method

.method private native createDeviceNative(Ljava/lang/String;)Z
.end method

.method private native createPairedDeviceNative(Ljava/lang/String;I)Z
.end method

.method private native createPairedDeviceOutOfBandNative(Ljava/lang/String;I)Z
.end method

.method private destroyNotification()V
    .registers 3

    .prologue
    .line 863
    iget-object v0, p0, Landroid/server/BluetoothService;->mNotiManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_f

    .line 865
    iget-object v0, p0, Landroid/server/BluetoothService;->mNotiManager:Landroid/app/NotificationManager;

    const v1, 0x1080080

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 866
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/server/BluetoothService;->mNotiManager:Landroid/app/NotificationManager;

    .line 868
    :cond_f
    return-void
.end method

.method private native disableNative()I
.end method

.method private displayNotification()V
    .registers 9

    .prologue
    const v7, 0x10403bf

    .line 841
    new-instance v0, Landroid/app/Notification;

    const v3, 0x10803ef

    iget-object v4, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 844
    .local v0, notification:Landroid/app/Notification;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 845
    .local v2, settingIntent:Landroid/content/Intent;
    const-string v3, "android.settings.BLUETOOTH_SETTINGS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 848
    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 849
    iget-object v3, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x4000

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 852
    .local v1, pending:Landroid/app/PendingIntent;
    iget-object v3, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const v6, 0x10403c0

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 853
    iget v3, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v0, Landroid/app/Notification;->flags:I

    .line 854
    iget v3, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v0, Landroid/app/Notification;->defaults:I

    .line 856
    iget-object v3, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Landroid/server/BluetoothService;->mNotiManager:Landroid/app/NotificationManager;

    .line 858
    iget-object v3, p0, Landroid/server/BluetoothService;->mNotiManager:Landroid/app/NotificationManager;

    const v4, 0x1080080

    invoke-virtual {v3, v4, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 860
    return-void
.end method

.method private native enableNative()I
.end method

.method private native fetchRemoteDiInfoNative(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private declared-synchronized finishDisable(Z)V
    .registers 12
    .parameter "saveSetting"

    .prologue
    const-string v7, "BluetoothService"

    .line 543
    monitor-enter p0

    :try_start_3
    const-string v7, "BluetoothService"

    const-string v8, "finishDisable..."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const/4 v7, 0x0

    iput v7, p0, Landroid/server/BluetoothService;->mAclLinkCount:I

    .line 548
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/server/BluetoothService;->mWaitingForHeadsetDisconnected:Z

    .line 549
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/server/BluetoothService;->mWaitingForA2dpDisconnected:Z

    .line 550
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/server/BluetoothService;->mWaitingForHidDisconnected:Z

    .line 551
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/server/BluetoothService;->mWaitingForAclDisconnected:Z

    .line 554
    iget v7, p0, Landroid/server/BluetoothService;->mBluetoothState:I

    const/16 v8, 0xd

    if-eq v7, v8, :cond_3b

    .line 555
    const-string v7, "BluetoothService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Oops: finishDisable BT in state "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/server/BluetoothService;->mBluetoothState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_aa

    .line 597
    :cond_39
    :goto_39
    monitor-exit p0

    return-void

    .line 558
    :cond_3b
    :try_start_3b
    iget-object v7, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v7}, Landroid/server/BluetoothEventLoop;->stop()V

    .line 559
    invoke-direct {p0}, Landroid/server/BluetoothService;->tearDownNativeDataNative()Z

    .line 560
    invoke-direct {p0}, Landroid/server/BluetoothService;->disableNative()I

    .line 563
    iget-object v7, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    const/16 v8, 0xb

    invoke-virtual {v7, v8}, Landroid/server/BluetoothService$BondState;->listInState(I)[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_50
    if-ge v2, v6, :cond_5f

    aget-object v0, v1, v2

    .line 564
    .local v0, address:Ljava/lang/String;
    iget-object v7, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    const/16 v8, 0xa

    const/4 v9, 0x3

    invoke-virtual {v7, v0, v8, v9}, Landroid/server/BluetoothService$BondState;->setBondState(Ljava/lang/String;II)V

    .line 563
    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    .line 569
    .end local v0           #address:Ljava/lang/String;
    :cond_5f
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 570
    .local v5, intent:Landroid/content/Intent;
    const-string v7, "android.bluetooth.adapter.extra.SCAN_MODE"

    const/16 v8, 0x14

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 571
    const-string v7, "android.bluetooth.adapter.extra.PREVIOUS_SCAN_MODE"

    iget v8, p0, Landroid/server/BluetoothService;->prevScanMode:I

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 572
    iget-object v7, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.BLUETOOTH"

    invoke-virtual {v7, v5, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 574
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/server/BluetoothService;->mIsDiscovering:Z

    .line 575
    iget-object v7, p0, Landroid/server/BluetoothService;->mAdapterProperties:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 576
    iget-object v7, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 578
    if-eqz p1, :cond_8e

    .line 579
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Landroid/server/BluetoothService;->persistBluetoothOnSetting(Z)V

    .line 582
    :cond_8e
    const/16 v7, 0xa

    invoke-direct {p0, v7}, Landroid/server/BluetoothService;->setBluetoothState(I)V

    .line 585
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_96
    .catchall {:try_start_3b .. :try_end_96} :catchall_aa

    move-result-wide v3

    .line 587
    .local v3, ident:J
    :try_start_97
    iget-object v7, p0, Landroid/server/BluetoothService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v7}, Lcom/android/internal/app/IBatteryStats;->noteBluetoothOff()V
    :try_end_9c
    .catchall {:try_start_97 .. :try_end_9c} :catchall_ad
    .catch Landroid/os/RemoteException; {:try_start_97 .. :try_end_9c} :catch_b2

    .line 590
    :try_start_9c
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 593
    :goto_9f
    iget-boolean v7, p0, Landroid/server/BluetoothService;->mRestart:Z

    if-eqz v7, :cond_39

    .line 594
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/server/BluetoothService;->mRestart:Z

    .line 595
    invoke-virtual {p0}, Landroid/server/BluetoothService;->enable()Z
    :try_end_a9
    .catchall {:try_start_9c .. :try_end_a9} :catchall_aa

    goto :goto_39

    .line 543
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #ident:J
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #len$:I
    :catchall_aa
    move-exception v7

    monitor-exit p0

    throw v7

    .line 590
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #ident:J
    .restart local v5       #intent:Landroid/content/Intent;
    .restart local v6       #len$:I
    :catchall_ad
    move-exception v7

    :try_start_ae
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 588
    :catch_b2
    move-exception v7

    .line 590
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_b6
    .catchall {:try_start_ae .. :try_end_b6} :catchall_aa

    goto :goto_9f
.end method

.method private native getAdapterPathNative()Ljava/lang/String;
.end method

.method private native getAdapterPropertiesNative()[Ljava/lang/Object;
.end method

.method private native getDevicePropertiesNative(Ljava/lang/String;)[Ljava/lang/Object;
.end method

.method private native getDeviceServiceChannelNative(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method private native getHidInfoNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private getUuidFromCache(Ljava/lang/String;)[Landroid/os/ParcelUuid;
    .registers 7
    .parameter "address"

    .prologue
    .line 2302
    const-string v4, "UUIDs"

    invoke-virtual {p0, p1, v4}, Landroid/server/BluetoothService;->getRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2303
    .local v3, value:Ljava/lang/String;
    if-nez v3, :cond_a

    const/4 v4, 0x0

    .line 2313
    :goto_9
    return-object v4

    .line 2305
    :cond_a
    const/4 v1, 0x0

    .line 2307
    .local v1, uuidStrings:[Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2308
    array-length v4, v1

    new-array v2, v4, [Landroid/os/ParcelUuid;

    .line 2310
    .local v2, uuids:[Landroid/os/ParcelUuid;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_15
    array-length v4, v1

    if-ge v0, v4, :cond_23

    .line 2311
    aget-object v4, v1, v0

    invoke-static {v4}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v4

    aput-object v4, v2, v0

    .line 2310
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_23
    move-object v4, v2

    .line 2313
    goto :goto_9
.end method

.method private initProfileState()V
    .registers 9

    .prologue
    .line 3120
    const/4 v2, 0x0

    .line 3121
    .local v2, bonds:[Ljava/lang/String;
    const-string v7, "Devices"

    invoke-virtual {p0, v7}, Landroid/server/BluetoothService;->getPropertyInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3122
    .local v6, val:Ljava/lang/String;
    if-eqz v6, :cond_f

    .line 3123
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3125
    :cond_f
    if-nez v2, :cond_12

    .line 3139
    :cond_11
    return-void

    .line 3129
    :cond_12
    move-object v1, v2

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_15
    if-ge v3, v4, :cond_11

    aget-object v5, v1, v3

    .line 3130
    .local v5, path:Ljava/lang/String;
    invoke-virtual {p0, v5}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3131
    .local v0, address:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/server/BluetoothService;->addProfileState(Ljava/lang/String;)Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3129
    add-int/lit8 v3, v3, 0x1

    goto :goto_15
.end method

.method private native initializeNativeDataNative()V
.end method

.method private final isAirplaneModeOn()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2841
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_12

    move v0, v3

    :goto_11
    return v0

    :cond_12
    move v0, v2

    goto :goto_11
.end method

.method private isBondingFeasible(Ljava/lang/String;)Z
    .registers 6
    .parameter "address"

    .prologue
    const/4 v3, 0x0

    .line 1936
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v0

    if-nez v0, :cond_12

    move v0, v3

    .line 1965
    :goto_11
    return v0

    .line 1940
    :cond_12
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    move v0, v3

    .line 1941
    goto :goto_11

    .line 1943
    :cond_1a
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 1945
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0}, Landroid/server/BluetoothService$BondState;->getPendingOutgoingBonding()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 1946
    const-string v0, "Ignoring createBond(): another device is bonding"

    invoke-static {v0}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    move v0, v3

    .line 1948
    goto :goto_11

    .line 1953
    :cond_2d
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->isAutoPairingAttemptsInProgress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->getBondState(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_46

    .line 1955
    const-string v0, "Ignoring createBond(): this device is already bonding or bonded"

    invoke-static {v0}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    move v0, v3

    .line 1956
    goto :goto_11

    .line 1959
    :cond_46
    sget-object v0, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 1960
    invoke-direct {p0}, Landroid/server/BluetoothService;->writeDockPin()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 1961
    const-string v0, "Error while writing Pin for the dock"

    invoke-static {v0}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    move v0, v3

    .line 1962
    goto :goto_11

    .line 1965
    :cond_5b
    const/4 v0, 0x1

    goto :goto_11
.end method

.method private isEnabledInternal()Z
    .registers 3

    .prologue
    .line 462
    iget v0, p0, Landroid/server/BluetoothService;->mBluetoothState:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private native isEnabledNative()I
.end method

.method private native listHidInfoNative()Ljava/lang/String;
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 3221
    const-string v0, "BluetoothService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3222
    return-void
.end method

.method private pairingAttempt(Ljava/lang/String;I)V
    .registers 13
    .parameter "address"
    .parameter "result"

    .prologue
    const-wide/16 v8, 0xbb8

    const/16 v7, 0xa

    .line 1206
    iget-object v3, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v3, p1}, Landroid/server/BluetoothService$BondState;->getAttempt(Ljava/lang/String;)I

    move-result v0

    .line 1207
    .local v0, attempt:I
    int-to-long v3, v0

    mul-long/2addr v3, v8

    const-wide/16 v5, 0x2ee0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1b

    .line 1209
    iget-object v3, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v3, p1}, Landroid/server/BluetoothService$BondState;->clearPinAttempts(Ljava/lang/String;)V

    .line 1210
    invoke-virtual {p0, p1, v7, p2}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z

    .line 1225
    :goto_1a
    return-void

    .line 1214
    :cond_1b
    iget-object v3, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1215
    .local v1, message:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1216
    iget-object v3, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    int-to-long v4, v0

    mul-long/2addr v4, v8

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v2

    .line 1218
    .local v2, postResult:Z
    if-nez v2, :cond_37

    .line 1219
    iget-object v3, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v3, p1}, Landroid/server/BluetoothService$BondState;->clearPinAttempts(Ljava/lang/String;)V

    .line 1220
    invoke-virtual {p0, p1, v7, p2}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z

    goto :goto_1a

    .line 1224
    :cond_37
    iget-object v3, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v3, p1}, Landroid/server/BluetoothService$BondState;->attempt(Ljava/lang/String;)V

    goto :goto_1a
.end method

.method private persistBluetoothOnSetting(Z)V
    .registers 7
    .parameter "bluetoothOn"

    .prologue
    .line 1149
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1150
    .local v0, origCallerIdentityToken:J
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bluetooth_on"

    if-eqz p1, :cond_16

    const/4 v4, 0x1

    :goto_f
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1152
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1153
    return-void

    .line 1150
    :cond_16
    const/4 v4, 0x0

    goto :goto_f
.end method

.method private native readAdapterOutOfBandDataNative()[B
.end method

.method public static declared-synchronized readDockBluetoothAddress()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v8, 0x0

    .line 337
    const-class v5, Landroid/server/BluetoothService;

    monitor-enter v5

    :try_start_4
    sget-object v6, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;

    if-eqz v6, :cond_c

    sget-object v6, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_78

    .line 367
    :cond_a
    :goto_a
    monitor-exit v5

    return-object v6

    .line 339
    :cond_c
    const/4 v3, 0x0

    .line 342
    .local v3, file:Ljava/io/BufferedInputStream;
    :try_start_d
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    const-string v7, "/sys/class/switch/dock/bt_addr"

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_7b
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_19} :catch_5c
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_19} :catch_6b

    .line 343
    .end local v3           #file:Ljava/io/BufferedInputStream;
    .local v4, file:Ljava/io/BufferedInputStream;
    const/16 v6, 0x11

    :try_start_1b
    new-array v0, v6, [B

    .line 344
    .local v0, address:[B
    invoke-virtual {v4, v0}, Ljava/io/BufferedInputStream;->read([B)I

    .line 345
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 346
    .local v1, dockAddress:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 347
    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 348
    sput-object v1, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;

    .line 349
    sget-object v6, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;
    :try_end_33
    .catchall {:try_start_1b .. :try_end_33} :catchall_86
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_33} :catch_8d
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_33} :catch_89

    .line 358
    if-eqz v4, :cond_a

    .line 360
    :try_start_35
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_78
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_a

    .line 361
    :catch_39
    move-exception v7

    goto :goto_a

    .line 351
    :cond_3b
    :try_start_3b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CheckBluetoothAddress failed for car dock address:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_3b .. :try_end_51} :catchall_86
    .catch Ljava/io/FileNotFoundException; {:try_start_3b .. :try_end_51} :catch_8d
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_51} :catch_89

    .line 358
    if-eqz v4, :cond_56

    .line 360
    :try_start_53
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_78
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_84

    :cond_56
    :goto_56
    move-object v3, v4

    .line 366
    .end local v0           #address:[B
    .end local v1           #dockAddress:Ljava/lang/String;
    .end local v4           #file:Ljava/io/BufferedInputStream;
    .restart local v3       #file:Ljava/io/BufferedInputStream;
    :cond_57
    :goto_57
    const/4 v6, 0x0

    :try_start_58
    sput-object v6, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;
    :try_end_5a
    .catchall {:try_start_58 .. :try_end_5a} :catchall_78

    move-object v6, v8

    .line 367
    goto :goto_a

    .line 353
    :catch_5c
    move-exception v6

    move-object v2, v6

    .line 354
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_5e
    :try_start_5e
    const-string v6, "FileNotFoundException while trying to read dock address"

    invoke-static {v6}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_63
    .catchall {:try_start_5e .. :try_end_63} :catchall_7b

    .line 358
    if-eqz v3, :cond_57

    .line 360
    :try_start_65
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_78
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_69

    goto :goto_57

    .line 361
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_69
    move-exception v6

    goto :goto_57

    .line 355
    :catch_6b
    move-exception v6

    move-object v2, v6

    .line 356
    .local v2, e:Ljava/io/IOException;
    :goto_6d
    :try_start_6d
    const-string v6, "IOException while trying to read dock address"

    invoke-static {v6}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_72
    .catchall {:try_start_6d .. :try_end_72} :catchall_7b

    .line 358
    if-eqz v3, :cond_57

    .line 360
    :try_start_74
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_78
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_69

    goto :goto_57

    .line 337
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #file:Ljava/io/BufferedInputStream;
    :catchall_78
    move-exception v6

    monitor-exit v5

    throw v6

    .line 358
    .restart local v3       #file:Ljava/io/BufferedInputStream;
    :catchall_7b
    move-exception v6

    :goto_7c
    if-eqz v3, :cond_81

    .line 360
    :try_start_7e
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_81
    .catchall {:try_start_7e .. :try_end_81} :catchall_78
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_82

    .line 358
    :cond_81
    :goto_81
    :try_start_81
    throw v6
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_78

    .line 361
    :catch_82
    move-exception v7

    goto :goto_81

    .end local v3           #file:Ljava/io/BufferedInputStream;
    .restart local v0       #address:[B
    .restart local v1       #dockAddress:Ljava/lang/String;
    .restart local v4       #file:Ljava/io/BufferedInputStream;
    :catch_84
    move-exception v6

    goto :goto_56

    .line 358
    .end local v0           #address:[B
    .end local v1           #dockAddress:Ljava/lang/String;
    :catchall_86
    move-exception v6

    move-object v3, v4

    .end local v4           #file:Ljava/io/BufferedInputStream;
    .restart local v3       #file:Ljava/io/BufferedInputStream;
    goto :goto_7c

    .line 355
    .end local v3           #file:Ljava/io/BufferedInputStream;
    .restart local v4       #file:Ljava/io/BufferedInputStream;
    :catch_89
    move-exception v6

    move-object v2, v6

    move-object v3, v4

    .end local v4           #file:Ljava/io/BufferedInputStream;
    .restart local v3       #file:Ljava/io/BufferedInputStream;
    goto :goto_6d

    .line 353
    .end local v3           #file:Ljava/io/BufferedInputStream;
    .restart local v4       #file:Ljava/io/BufferedInputStream;
    :catch_8d
    move-exception v6

    move-object v2, v6

    move-object v3, v4

    .end local v4           #file:Ljava/io/BufferedInputStream;
    .restart local v3       #file:Ljava/io/BufferedInputStream;
    goto :goto_5e
.end method

.method private native removeDeviceNative(Ljava/lang/String;)Z
.end method

.method private removeProfileState(Ljava/lang/String;)V
    .registers 3
    .parameter "address"

    .prologue
    .line 3116
    iget-object v0, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3117
    return-void
.end method

.method private native removeServiceRecordNative(I)Z
.end method

.method static scanModeToBluezString(I)Ljava/lang/String;
    .registers 2
    .parameter "mode"

    .prologue
    .line 2989
    packed-switch p0, :pswitch_data_10

    .line 2997
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 2991
    :pswitch_5
    const-string/jumbo v0, "off"

    goto :goto_4

    .line 2993
    :pswitch_9
    const-string v0, "connectable"

    goto :goto_4

    .line 2995
    :pswitch_c
    const-string v0, "discoverable"

    goto :goto_4

    .line 2989
    nop

    :pswitch_data_10
    .packed-switch 0x14
        :pswitch_5
        :pswitch_9
        :pswitch_3
        :pswitch_c
    .end packed-switch
.end method

.method private native setAdapterPropertyBooleanNative(Ljava/lang/String;I)Z
.end method

.method private native setAdapterPropertyIntegerNative(Ljava/lang/String;I)Z
.end method

.method private native setAdapterPropertyStringNative(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private setAddress()V
    .registers 16

    .prologue
    .line 601
    const-string/jumbo v8, "ril.bt_macaddr"

    const-string v9, "Unknown"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 603
    .local v0, bdAddr:Ljava/lang/String;
    const-string v8, "001247012345"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b7

    .line 604
    const-string/jumbo v8, "persist.service.brcm.bt.mac"

    const-string v9, "Unknown"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 605
    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1247"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    .line 620
    :goto_28
    return-void

    .line 608
    :cond_29
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 609
    .local v2, random:Ljava/util/Random;
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 610
    .local v3, random2:Ljava/util/Random;
    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v8

    const-wide/32 v10, 0xffff

    rem-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 611
    .local v4, rannum:J
    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v8

    const-wide/32 v10, 0xffff

    rem-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    .line 613
    .local v6, rannum2:J
    const-string v8, "%02X%02X%02X%02X%02X%02X"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/16 v11, 0x12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/16 v11, 0x47

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/16 v11, 0x8

    shr-long v11, v4, v11

    const-wide/16 v13, 0xff

    and-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-wide/16 v11, 0xff

    and-long/2addr v11, v4

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const/16 v11, 0x8

    shr-long v11, v6, v11

    const-wide/16 v13, 0xff

    and-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-wide/16 v11, 0xff

    and-long/2addr v11, v6

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 615
    .local v1, newbdAddr:Ljava/lang/String;
    const-string/jumbo v8, "persist.service.brcm.bt.mac"

    invoke-static {v8, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    const-string v8, "BluetoothService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "new bluetooth address = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28

    .line 618
    .end local v1           #newbdAddr:Ljava/lang/String;
    .end local v2           #random:Ljava/util/Random;
    .end local v3           #random2:Ljava/util/Random;
    .end local v4           #rannum:J
    .end local v6           #rannum2:J
    :cond_b7
    const-string v8, "BluetoothService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "keep current bluetooth address = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28
.end method

.method private setAlarmService()V
    .registers 3

    .prologue
    .line 1652
    iget-object v0, p0, Landroid/server/BluetoothService;->mAlarmService:Landroid/app/AlarmManager;

    if-nez v0, :cond_10

    .line 1653
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Landroid/server/BluetoothService;->mAlarmService:Landroid/app/AlarmManager;

    .line 1655
    :cond_10
    return-void
.end method

.method private declared-synchronized setBluetoothState(I)V
    .registers 5
    .parameter "state"

    .prologue
    .line 883
    monitor-enter p0

    :try_start_1
    iget v1, p0, Landroid/server/BluetoothService;->mBluetoothState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_4b

    if-ne p1, v1, :cond_7

    .line 897
    :goto_5
    monitor-exit p0

    return-void

    .line 887
    :cond_7
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bluetooth state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/server/BluetoothService;->mBluetoothState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 889
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 890
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    iget v2, p0, Landroid/server/BluetoothService;->mBluetoothState:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 891
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 892
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 894
    iput p1, p0, Landroid/server/BluetoothService;->mBluetoothState:I

    .line 896
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_7 .. :try_end_4a} :catchall_4b

    goto :goto_5

    .line 883
    .end local v0           #intent:Landroid/content/Intent;
    :catchall_4b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private native setDevicePropertyBooleanNative(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private native setLinkTimeoutNative(Ljava/lang/String;I)Z
.end method

.method private native setPairingConfirmationNative(Ljava/lang/String;ZI)Z
.end method

.method private native setPasskeyNative(Ljava/lang/String;II)Z
.end method

.method private native setPinNative(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private setPropertyBoolean(Ljava/lang/String;Z)Z
    .registers 7
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 1631
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1632
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v0

    if-nez v0, :cond_12

    move v0, v3

    .line 1633
    :goto_11
    return v0

    :cond_12
    if-eqz p2, :cond_1a

    const/4 v0, 0x1

    :goto_15
    invoke-direct {p0, p1, v0}, Landroid/server/BluetoothService;->setAdapterPropertyBooleanNative(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_11

    :cond_1a
    move v0, v3

    goto :goto_15
.end method

.method private setPropertyInteger(Ljava/lang/String;I)Z
    .registers 6
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1625
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1626
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x0

    .line 1627
    :goto_10
    return v0

    :cond_11
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothService;->setAdapterPropertyIntegerNative(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_10
.end method

.method private setPropertyString(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1619
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x0

    .line 1621
    :goto_10
    return v0

    :cond_11
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothService;->setAdapterPropertyStringNative(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_10
.end method

.method private native setRemoteOutOfBandDataNative(Ljava/lang/String;[B[BI)Z
.end method

.method private native setServiceTrustNative(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method private native setupNativeDataNative()Z
.end method

.method private native startDiscoveryByCodNative(I)Z
.end method

.method private native startDiscoveryNative()Z
.end method

.method private native stopDiscoveryNative()Z
.end method

.method private native tearDownNativeDataNative()Z
.end method

.method private static toBondStateString(I)Ljava/lang/String;
    .registers 2
    .parameter "bondState"

    .prologue
    .line 1543
    packed-switch p0, :pswitch_data_10

    .line 1551
    const-string v0, "??????"

    :goto_5
    return-object v0

    .line 1545
    :pswitch_6
    const-string/jumbo v0, "not bonded"

    goto :goto_5

    .line 1547
    :pswitch_a
    const-string v0, "bonding"

    goto :goto_5

    .line 1549
    :pswitch_d
    const-string v0, "bonded"

    goto :goto_5

    .line 1543
    :pswitch_data_10
    .packed-switch 0xa
        :pswitch_6
        :pswitch_a
        :pswitch_d
    .end packed-switch
.end method

.method private native updateRemoteNameNative(Ljava/lang/String;)V
.end method

.method private declared-synchronized writeDockPin()Z
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 371
    monitor-enter p0

    const/4 v1, 0x0

    .line 373
    .local v1, out:Ljava/io/BufferedWriter;
    :try_start_4
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    const-string v5, "/sys/class/switch/dock/bt_pin"

    invoke-direct {v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_5f
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_10} :catch_3f
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_10} :catch_50

    .line 377
    .end local v1           #out:Ljava/io/BufferedWriter;
    .local v2, out:Ljava/io/BufferedWriter;
    :try_start_10
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x40c3880000000000L

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 379
    .local v3, pin:I
    const-string v4, "%04d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;

    .line 380
    iget-object v4, p0, Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_10 .. :try_end_36} :catchall_6d
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_36} :catch_74
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_36} :catch_70

    .line 387
    if-eqz v2, :cond_3b

    .line 389
    :try_start_38
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_78
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_6b

    :cond_3b
    :goto_3b
    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    move v4, v9

    .line 396
    .end local v3           #pin:I
    :goto_3d
    monitor-exit p0

    return v4

    .line 382
    :catch_3f
    move-exception v4

    move-object v0, v4

    .line 383
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_41
    :try_start_41
    const-string v4, "FileNotFoundException while trying to write dock pairing pin"

    invoke-static {v4}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_41 .. :try_end_46} :catchall_5f

    .line 387
    if-eqz v1, :cond_4b

    .line 389
    :try_start_48
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_66
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_5d

    .line 395
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_4b
    :goto_4b
    const/4 v4, 0x0

    :try_start_4c
    iput-object v4, p0, Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;
    :try_end_4e
    .catchall {:try_start_4c .. :try_end_4e} :catchall_66

    move v4, v8

    .line 396
    goto :goto_3d

    .line 384
    :catch_50
    move-exception v4

    move-object v0, v4

    .line 385
    .local v0, e:Ljava/io/IOException;
    :goto_52
    :try_start_52
    const-string v4, "IOException while while trying to write dock pairing pin"

    invoke-static {v4}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_57
    .catchall {:try_start_52 .. :try_end_57} :catchall_5f

    .line 387
    if-eqz v1, :cond_4b

    .line 389
    :try_start_59
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_66
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_4b

    .line 390
    .end local v0           #e:Ljava/io/IOException;
    :catch_5d
    move-exception v4

    goto :goto_4b

    .line 387
    :catchall_5f
    move-exception v4

    :goto_60
    if-eqz v1, :cond_65

    .line 389
    :try_start_62
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_66
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_69

    .line 387
    :cond_65
    :goto_65
    :try_start_65
    throw v4
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_66

    .line 371
    :catchall_66
    move-exception v4

    :goto_67
    monitor-exit p0

    throw v4

    .line 390
    :catch_69
    move-exception v5

    goto :goto_65

    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    .restart local v3       #pin:I
    :catch_6b
    move-exception v4

    goto :goto_3b

    .line 387
    .end local v3           #pin:I
    :catchall_6d
    move-exception v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_60

    .line 384
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :catch_70
    move-exception v4

    move-object v0, v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_52

    .line 382
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :catch_74
    move-exception v4

    move-object v0, v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_41

    .line 371
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    .restart local v3       #pin:I
    :catchall_78
    move-exception v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_67
.end method


# virtual methods
.method public addHidInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "address"
    .parameter "info"

    .prologue
    .line 3208
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothService;->addHidInfoNative(Ljava/lang/String;Ljava/lang/String;)V

    .line 3209
    return-void
.end method

.method declared-synchronized addRemoteDeviceProperties(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 13
    .parameter "address"
    .parameter "properties"

    .prologue
    .line 2139
    monitor-enter p0

    :try_start_1
    iget-object v7, p0, Landroid/server/BluetoothService;->mDeviceProperties:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 2140
    .local v5, propertyValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v5, :cond_10

    .line 2141
    new-instance v5, Ljava/util/HashMap;

    .end local v5           #propertyValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2144
    .restart local v5       #propertyValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_10
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    array-length v7, p2

    if-ge v0, v7, :cond_7f

    .line 2145
    aget-object v3, p2, v0

    .line 2146
    .local v3, name:Ljava/lang/String;
    const/4 v4, 0x0

    .line 2148
    .local v4, newValue:Ljava/lang/String;
    if-nez v3, :cond_3a

    .line 2149
    const-string v7, "BluetoothService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: Remote Device Property at index"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "is null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    :goto_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 2152
    :cond_3a
    const-string v7, "UUIDs"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4a

    const-string v7, "Nodes"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7a

    .line 2153
    :cond_4a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2154
    .local v6, str:Ljava/lang/StringBuilder;
    add-int/lit8 v0, v0, 0x1

    aget-object v7, p2, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2155
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_5c
    if-ge v1, v2, :cond_6d

    .line 2156
    add-int/lit8 v0, v0, 0x1

    aget-object v7, p2, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2157
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2155
    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    .line 2159
    :cond_6d
    if-lez v2, :cond_73

    .line 2160
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2166
    .end local v1           #j:I
    .end local v2           #len:I
    .end local v6           #str:Ljava/lang/StringBuilder;
    :cond_73
    :goto_73
    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_76
    .catchall {:try_start_1 .. :try_end_76} :catchall_77

    goto :goto_37

    .line 2139
    .end local v0           #i:I
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #newValue:Ljava/lang/String;
    .end local v5           #propertyValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_77
    move-exception v7

    monitor-exit p0

    throw v7

    .line 2163
    .restart local v0       #i:I
    .restart local v3       #name:Ljava/lang/String;
    .restart local v4       #newValue:Ljava/lang/String;
    .restart local v5       #propertyValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7a
    add-int/lit8 v0, v0, 0x1

    :try_start_7c
    aget-object v4, p2, v0

    goto :goto_73

    .line 2168
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #newValue:Ljava/lang/String;
    :cond_7f
    iget-object v7, p0, Landroid/server/BluetoothService;->mDeviceProperties:Ljava/util/HashMap;

    invoke-virtual {v7, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2172
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->updateDeviceServiceChannelCache(Ljava/lang/String;)V
    :try_end_87
    .catchall {:try_start_7c .. :try_end_87} :catchall_77

    .line 2173
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized addRfcommServiceRecord(Ljava/lang/String;Landroid/os/ParcelUuid;ILandroid/os/IBinder;)I
    .registers 15
    .parameter "serviceName"
    .parameter "uuid"
    .parameter "channel"
    .parameter "b"

    .prologue
    const/4 v9, -0x1

    .line 2604
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2605
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_75

    move-result v0

    if-nez v0, :cond_14

    move v0, v9

    .line 2630
    :goto_12
    monitor-exit p0

    return v0

    .line 2607
    :cond_14
    if-eqz p1, :cond_1f

    if-eqz p2, :cond_1f

    const/4 v0, 0x1

    if-lt p3, v0, :cond_1f

    const/16 v0, 0x1e

    if-le p3, v0, :cond_21

    :cond_1f
    move v0, v9

    .line 2609
    goto :goto_12

    .line 2617
    :cond_21
    :try_start_21
    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    int-to-short v6, p3

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/server/BluetoothService;->addRfcommServiceRecordNative(Ljava/lang/String;JJS)I

    move-result v7

    .line 2620
    .local v7, handle:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "new handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 2621
    if-ne v7, v9, :cond_57

    move v0, v9

    .line 2622
    goto :goto_12

    .line 2625
    :cond_57
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 2626
    .local v8, pid:I
    iget-object v0, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v7}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6a
    .catchall {:try_start_21 .. :try_end_6a} :catchall_75

    .line 2628
    :try_start_6a
    new-instance v0, Landroid/server/BluetoothService$Reaper;

    invoke-direct {v0, p0, v7, v8}, Landroid/server/BluetoothService$Reaper;-><init>(Landroid/server/BluetoothService;II)V

    const/4 v1, 0x0

    invoke-interface {p4, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_73
    .catchall {:try_start_6a .. :try_end_73} :catchall_75
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_73} :catch_78

    :goto_73
    move v0, v7

    .line 2630
    goto :goto_12

    .line 2604
    .end local v7           #handle:I
    .end local v8           #pid:I
    :catchall_75
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2629
    .restart local v7       #handle:I
    .restart local v8       #pid:I
    :catch_78
    move-exception v0

    goto :goto_73
.end method

.method declared-synchronized attemptAutoPair(Ljava/lang/String;)Z
    .registers 3
    .parameter "address"

    .prologue
    .line 1164
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->hasAutoPairingFailed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->isAutoPairingBlacklisted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 1166
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->attempt(Ljava/lang/String;)V

    .line 1167
    const-string v0, "0000"

    invoke-static {v0}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/server/BluetoothService;->setPin(Ljava/lang/String;[B)Z
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_24

    .line 1168
    const/4 v0, 0x1

    .line 1170
    :goto_20
    monitor-exit p0

    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_20

    .line 1164
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized authorizeService(Ljava/lang/String;ZZ)Z
    .registers 10
    .parameter "address"
    .parameter "authorized"
    .parameter "always"

    .prologue
    const/4 v5, 0x0

    .line 2231
    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2234
    iget-object v2, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v2}, Landroid/server/BluetoothEventLoop;->getAuthorizeAgentRequestData()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2235
    .local v1, data:Ljava/lang/Integer;
    if-eqz p2, :cond_3e

    const/4 v2, 0x1

    move v0, v2

    .line 2236
    .local v0, auth_code:I
    :goto_1b
    if-nez v1, :cond_40

    .line 2237
    const-string v2, "BluetoothService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "authorizeService("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") called but no native data available.\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_2 .. :try_end_3b} :catchall_49

    move v2, v5

    .line 2244
    :goto_3c
    monitor-exit p0

    return v2

    .end local v0           #auth_code:I
    :cond_3e
    move v0, v5

    .line 2235
    goto :goto_1b

    .line 2244
    .restart local v0       #auth_code:I
    :cond_40
    :try_start_40
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, p1, v0, v2}, Landroid/server/BluetoothService;->authorizeServiceNative(Ljava/lang/String;II)Z
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_49

    move-result v2

    goto :goto_3c

    .line 2231
    .end local v0           #auth_code:I
    .end local v1           #data:Ljava/lang/Integer;
    :catchall_49
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized cancelBondProcess(Ljava/lang/String;)Z
    .registers 6
    .parameter "address"

    .prologue
    const/4 v3, 0x0

    .line 2027
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2029
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_39

    move-result v0

    if-nez v0, :cond_14

    move v0, v3

    .line 2042
    :goto_12
    monitor-exit p0

    return v0

    .line 2031
    :cond_14
    :try_start_14
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    move v0, v3

    .line 2032
    goto :goto_12

    .line 2034
    :cond_1c
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 2035
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->getBondState(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2c

    move v0, v3

    .line 2036
    goto :goto_12

    .line 2039
    :cond_2c
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    const/16 v1, 0xa

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v1, v2}, Landroid/server/BluetoothService$BondState;->setBondState(Ljava/lang/String;II)V

    .line 2041
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->cancelDeviceCreationNative(Ljava/lang/String;)Z
    :try_end_37
    .catchall {:try_start_14 .. :try_end_37} :catchall_39

    .line 2042
    const/4 v0, 0x1

    goto :goto_12

    .line 2027
    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cancelDiscovery()Z
    .registers 4

    .prologue
    .line 1913
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    .line 1922
    :goto_11
    monitor-exit p0

    return v0

    .line 1921
    :cond_13
    :try_start_13
    invoke-direct {p0}, Landroid/server/BluetoothService;->stopDiscoveryNative()Z
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    .line 1922
    const/4 v0, 0x1

    goto :goto_11

    .line 1913
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cancelPairingUserInput(Ljava/lang/String;)Z
    .registers 7
    .parameter "address"

    .prologue
    const/4 v4, 0x0

    .line 2509
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2511
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_6b

    move-result v1

    if-nez v1, :cond_14

    move v1, v4

    .line 2526
    :goto_12
    monitor-exit p0

    return v1

    .line 2513
    :cond_14
    :try_start_14
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    move v1, v4

    .line 2514
    goto :goto_12

    .line 2516
    :cond_1c
    iget-object v1, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    const/16 v2, 0xa

    const/4 v3, 0x3

    invoke-virtual {v1, p1, v2, v3}, Landroid/server/BluetoothService$BondState;->setBondState(Ljava/lang/String;II)V

    .line 2518
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 2519
    iget-object v1, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v1}, Landroid/server/BluetoothEventLoop;->getPasskeyAgentRequestData()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2520
    .local v0, data:Ljava/lang/Integer;
    if-nez v0, :cond_62

    .line 2521
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelUserInputNative("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") called but no native data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "available, ignoring. Maybe the PasskeyAgent Request was already cancelled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "by the remote or by bluez.\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 2524
    goto :goto_12

    .line 2526
    :cond_62
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v1}, Landroid/server/BluetoothService;->cancelPairingUserInputNative(Ljava/lang/String;I)Z
    :try_end_69
    .catchall {:try_start_14 .. :try_end_69} :catchall_6b

    move-result v1

    goto :goto_12

    .line 2509
    .end local v0           #data:Ljava/lang/Integer;
    :catchall_6b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public connectHeadset(Ljava/lang/String;)Z
    .registers 6
    .parameter "address"

    .prologue
    const/4 v3, 0x1

    .line 3058
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3059
    .local v1, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v1, :cond_1b

    .line 3060
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3061
    .local v0, msg:Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 3062
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3063
    iget-object v2, p0, Landroid/server/BluetoothService;->mHfpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    move v2, v3

    .line 3066
    .end local v0           #msg:Landroid/os/Message;
    :goto_1a
    return v2

    :cond_1b
    const/4 v2, 0x0

    goto :goto_1a
.end method

.method public connectSink(Ljava/lang/String;)Z
    .registers 5
    .parameter "address"

    .prologue
    .line 3082
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3083
    .local v1, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v1, :cond_1b

    .line 3084
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3085
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 3086
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3087
    iget-object v2, p0, Landroid/server/BluetoothService;->mA2dpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    .line 3088
    const/4 v2, 0x1

    .line 3090
    .end local v0           #msg:Landroid/os/Message;
    :goto_1a
    return v2

    :cond_1b
    const/4 v2, 0x0

    goto :goto_1a
.end method

.method public declared-synchronized createBond(Ljava/lang/String;)Z
    .registers 4
    .parameter "address"

    .prologue
    const/4 v1, 0x0

    .line 1969
    monitor-enter p0

    :try_start_2
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->isBondingFeasible(Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_24

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    .line 1978
    :goto_9
    monitor-exit p0

    return v0

    .line 1971
    :cond_b
    const v0, 0xea60

    :try_start_e
    invoke-direct {p0, p1, v0}, Landroid/server/BluetoothService;->createPairedDeviceNative(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_16

    move v0, v1

    .line 1972
    goto :goto_9

    .line 1975
    :cond_16
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    #calls: Landroid/server/BluetoothService$BondState;->setPendingOutgoingBonding(Ljava/lang/String;)V
    invoke-static {v0, p1}, Landroid/server/BluetoothService$BondState;->access$2900(Landroid/server/BluetoothService$BondState;Ljava/lang/String;)V

    .line 1976
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    const/16 v1, 0xb

    invoke-virtual {v0, p1, v1}, Landroid/server/BluetoothService$BondState;->setBondState(Ljava/lang/String;I)V
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_24

    .line 1978
    const/4 v0, 0x1

    goto :goto_9

    .line 1969
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createBondOutOfBand(Ljava/lang/String;[B[B)Z
    .registers 6
    .parameter "address"
    .parameter "hash"
    .parameter "randomizer"

    .prologue
    const/4 v1, 0x0

    .line 1983
    monitor-enter p0

    :try_start_2
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->isBondingFeasible(Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_27

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    .line 1993
    :goto_9
    monitor-exit p0

    return v0

    .line 1985
    :cond_b
    const v0, 0xea60

    :try_start_e
    invoke-direct {p0, p1, v0}, Landroid/server/BluetoothService;->createPairedDeviceOutOfBandNative(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_16

    move v0, v1

    .line 1986
    goto :goto_9

    .line 1989
    :cond_16
    invoke-virtual {p0, p1, p2, p3}, Landroid/server/BluetoothService;->setDeviceOutOfBandData(Ljava/lang/String;[B[B)Z

    .line 1990
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    #calls: Landroid/server/BluetoothService$BondState;->setPendingOutgoingBonding(Ljava/lang/String;)V
    invoke-static {v0, p1}, Landroid/server/BluetoothService$BondState;->access$2900(Landroid/server/BluetoothService$BondState;Ljava/lang/String;)V

    .line 1991
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    const/16 v1, 0xb

    invoke-virtual {v0, p1, v1}, Landroid/server/BluetoothService$BondState;->setBondState(Ljava/lang/String;I)V
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_27

    .line 1993
    const/4 v0, 0x1

    goto :goto_9

    .line 1983
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public disable()Z
    .registers 2

    .prologue
    .line 475
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->disable(Z)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized disable(Z)Z
    .registers 8
    .parameter "saveSetting"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const-string v0, "BluetoothService"

    .line 484
    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const-string v0, "BluetoothService"

    const-string v1, "disable..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget v0, p0, Landroid/server/BluetoothService;->mBluetoothState:I

    packed-switch v0, :pswitch_data_96

    .line 495
    :pswitch_1a
    const-string v0, "BluetoothService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Oops: disable BT in state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/server/BluetoothService;->mBluetoothState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_92

    move v0, v3

    .line 538
    :goto_35
    monitor-exit p0

    return v0

    .line 490
    :pswitch_37
    :try_start_37
    const-string v0, "BluetoothService"

    const-string v1, "Oops: disable BT when BT is OFF..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    .line 491
    goto :goto_35

    .line 498
    :pswitch_40
    iget-object v0, p0, Landroid/server/BluetoothService;->mEnableThread:Landroid/server/BluetoothService$EnableThread;

    if-eqz v0, :cond_55

    iget-object v0, p0, Landroid/server/BluetoothService;->mEnableThread:Landroid/server/BluetoothService$EnableThread;

    invoke-virtual {v0}, Landroid/server/BluetoothService$EnableThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 499
    const-string v0, "BluetoothService"

    const-string v1, "Oops: disable BT when enable thread is still alive..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 500
    goto :goto_35

    .line 504
    :cond_55
    iput-boolean p1, p0, Landroid/server/BluetoothService;->mDisableSaveSetting:Z

    .line 505
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/server/BluetoothService;->mWaitingForHeadsetDisconnected:Z

    .line 506
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/server/BluetoothService;->mWaitingForA2dpDisconnected:Z

    .line 508
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/server/BluetoothService;->mWaitingForHidDisconnected:Z

    .line 510
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/server/BluetoothService;->mWaitingForAclDisconnected:Z

    .line 512
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getScanMode()I

    move-result v0

    iput v0, p0, Landroid/server/BluetoothService;->prevScanMode:I

    .line 513
    const/16 v0, 0x14

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Landroid/server/BluetoothService;->_setScanMode(II)Z

    .line 516
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Landroid/server/BluetoothService;->setBluetoothState(I)V

    .line 517
    iget-object v0, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 531
    iget-object v0, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    if-eqz p1, :cond_83

    move v3, v5

    :cond_83
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 536
    invoke-direct {p0}, Landroid/server/BluetoothService;->destroyNotification()V
    :try_end_90
    .catchall {:try_start_37 .. :try_end_90} :catchall_92

    move v0, v5

    .line 538
    goto :goto_35

    .line 484
    :catchall_92
    move-exception v0

    monitor-exit p0

    throw v0

    .line 488
    nop

    :pswitch_data_96
    .packed-switch 0xa
        :pswitch_37
        :pswitch_1a
        :pswitch_40
    .end packed-switch
.end method

.method public disconnectHeadset(Ljava/lang/String;)Z
    .registers 5
    .parameter "address"

    .prologue
    .line 3070
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3071
    .local v1, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v1, :cond_1b

    .line 3072
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3073
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 3074
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3075
    iget-object v2, p0, Landroid/server/BluetoothService;->mHfpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    .line 3076
    const/4 v2, 0x1

    .line 3078
    .end local v0           #msg:Landroid/os/Message;
    :goto_1a
    return v2

    :cond_1b
    const/4 v2, 0x0

    goto :goto_1a
.end method

.method public disconnectSink(Ljava/lang/String;)Z
    .registers 5
    .parameter "address"

    .prologue
    .line 3094
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3095
    .local v1, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v1, :cond_1b

    .line 3096
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3097
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x7

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 3098
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3099
    iget-object v2, p0, Landroid/server/BluetoothService;->mA2dpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    .line 3100
    const/4 v2, 0x1

    .line 3102
    .end local v0           #msg:Landroid/os/Message;
    :goto_1a
    return v2

    :cond_1b
    const/4 v2, 0x0

    goto :goto_1a
.end method

.method native discoverServicesNative(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 27
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 2888
    move-object/from16 v0, p0

    iget v0, v0, Landroid/server/BluetoothService;->mBluetoothState:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_334

    .line 2902
    :goto_9
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mIsAirplaneSensitive = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/server/BluetoothService;->mIsAirplaneSensitive:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2903
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mIsAirplaneToggleable = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/server/BluetoothService;->mIsAirplaneToggleable:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2905
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Local address = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Landroid/server/BluetoothService;->getAddress()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2906
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Local name = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Landroid/server/BluetoothService;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2907
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "isDiscovering() = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Landroid/server/BluetoothService;->isDiscovering()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2909
    new-instance v10, Landroid/bluetooth/BluetoothHeadset;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object v0, v10

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/BluetoothHeadset;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothHeadset$ServiceListener;)V

    .line 2911
    .local v10, headset:Landroid/bluetooth/BluetoothHeadset;
    const-string v19, "\n--Known devices--"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2912
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mDeviceProperties:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_cc
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_21a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2913
    .local v3, address:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/server/BluetoothService$BondState;->getBondState(Ljava/lang/String;)I

    move-result v5

    .line 2914
    .local v5, bondState:I
    const-string v19, "%s %10s (%d) %s\n"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v3, v20, v21

    const/16 v21, 0x1

    invoke-static {v5}, Landroid/server/BluetoothService;->toBondStateString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/server/BluetoothService$BondState;->getAttempt(Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/server/BluetoothService;->getRemoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2919
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mDeviceServiceChannelCache:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map;

    .line 2920
    .local v17, uuidChannels:Ljava/util/Map;,"Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/lang/Integer;>;"
    if-nez v17, :cond_1af

    .line 2921
    const-string v19, "\tuuids = null"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2932
    :cond_13e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_14c
    :goto_14c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_cc

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/server/BluetoothService$RemoteService;

    .line 2933
    .local v15, service:Landroid/server/BluetoothService$RemoteService;
    move-object v0, v15

    iget-object v0, v0, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_14c

    .line 2934
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "\tPENDING CALLBACK: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object v0, v15

    iget-object v0, v0, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_14c

    .line 2890
    .end local v3           #address:Ljava/lang/String;
    .end local v5           #bondState:I
    .end local v10           #headset:Landroid/bluetooth/BluetoothHeadset;
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v15           #service:Landroid/server/BluetoothService$RemoteService;
    .end local v17           #uuidChannels:Ljava/util/Map;,"Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/lang/Integer;>;"
    :pswitch_186
    const-string v19, "Bluetooth OFF\n"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2977
    :cond_18f
    :goto_18f
    return-void

    .line 2893
    :pswitch_190
    const-string v19, "Bluetooth TURNING ON\n"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_18f

    .line 2896
    :pswitch_19a
    const-string v19, "Bluetooth TURNING OFF\n"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_18f

    .line 2899
    :pswitch_1a4
    const-string v19, "Bluetooth ON\n"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 2923
    .restart local v3       #address:Ljava/lang/String;
    .restart local v5       #bondState:I
    .restart local v10       #headset:Landroid/bluetooth/BluetoothHeadset;
    .restart local v17       #uuidChannels:Ljava/util/Map;,"Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/lang/Integer;>;"
    :cond_1af
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12       #i$:Ljava/util/Iterator;
    :goto_1b7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_13e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/ParcelUuid;

    .line 2924
    .local v16, uuid:Landroid/os/ParcelUuid;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 2925
    .local v6, channel:Ljava/lang/Integer;
    if-nez v6, :cond_1ee

    .line 2926
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "\t"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1b7

    .line 2928
    :cond_1ee
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "\t"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " RFCOMM channel = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1b7

    .line 2939
    .end local v3           #address:Ljava/lang/String;
    .end local v5           #bondState:I
    .end local v6           #channel:Ljava/lang/Integer;
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v16           #uuid:Landroid/os/ParcelUuid;
    .end local v17           #uuidChannels:Ljava/util/Map;,"Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/lang/Integer;>;"
    :cond_21a
    const-string v19, "Devices"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2940
    .local v18, value:Ljava/lang/String;
    const/4 v8, 0x0

    .line 2941
    .local v8, devicesObjectPath:[Ljava/lang/String;
    if-eqz v18, :cond_22d

    .line 2942
    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 2944
    :cond_22d
    const-string v19, "\n--ACL connected devices--"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2945
    if-eqz v8, :cond_250

    .line 2946
    move-object v4, v8

    .local v4, arr$:[Ljava/lang/String;
    array-length v13, v4

    .local v13, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_23b
    if-ge v11, v13, :cond_250

    aget-object v7, v4, v11

    .line 2947
    .local v7, device:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2946
    add-int/lit8 v11, v11, 0x1

    goto :goto_23b

    .line 2953
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v7           #device:Ljava/lang/String;
    .end local v11           #i$:I
    .end local v13           #len$:I
    :cond_250
    const-string v19, "\n--Headset Service--"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2954
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothHeadset;->getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;

    move-result-object v19

    move-object v0, v10

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v19

    packed-switch v19, :pswitch_data_340

    .line 2969
    :goto_267
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "\ngetCurrentHeadset() = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothHeadset;->getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2970
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getBatteryUsageHint() = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothHeadset;->getBatteryUsageHint()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2971
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothHeadset;->close()V

    .line 2972
    const-string v19, "\n--Application Service Records--"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2973
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_2bd
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_18f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 2974
    .local v9, handle:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 2975
    .local v14, pid:Ljava/lang/Integer;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "\tpid "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " handle "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2bd

    .line 2956
    .end local v9           #handle:Ljava/lang/Integer;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v14           #pid:Ljava/lang/Integer;
    :pswitch_308
    const-string v19, "getState() = STATE_DISCONNECTED"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_267

    .line 2959
    :pswitch_313
    const-string v19, "getState() = STATE_CONNECTING"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_267

    .line 2962
    :pswitch_31e
    const-string v19, "getState() = STATE_CONNECTED"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_267

    .line 2965
    :pswitch_329
    const-string v19, "getState() = STATE_ERROR"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_267

    .line 2888
    :pswitch_data_334
    .packed-switch 0xa
        :pswitch_186
        :pswitch_190
        :pswitch_1a4
        :pswitch_19a
    .end packed-switch

    .line 2954
    :pswitch_data_340
    .packed-switch -0x1
        :pswitch_329
        :pswitch_308
        :pswitch_313
        :pswitch_31e
    .end packed-switch
.end method

.method public enable()Z
    .registers 2

    .prologue
    .line 625
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->enable(Z)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized enable(Z)Z
    .registers 20
    .parameter "saveSetting"

    .prologue
    .line 638
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "bluetooth_enabled"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-nez v14, :cond_21

    .line 640
    const-string v14, "BT is Disabled"

    invoke-static {v14}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_2bb
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1c

    .line 641
    const/4 v14, 0x0

    .line 836
    :goto_1a
    monitor-exit p0

    return v14

    .line 643
    :catch_1c
    move-exception v14

    move-object v7, v14

    .local v7, e:Ljava/lang/Exception;
    :try_start_1e
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 646
    .end local v7           #e:Ljava/lang/Exception;
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    move-object v14, v0

    const-string v15, "android.permission.BLUETOOTH_ADMIN"

    const-string v16, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    const-string v14, "BluetoothService"

    const-string v15, "enable..."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    invoke-direct/range {p0 .. p0}, Landroid/server/BluetoothService;->setAddress()V

    .line 667
    move-object/from16 v0, p0

    iget v0, v0, Landroid/server/BluetoothService;->mBluetoothState:I

    move v14, v0

    const/16 v15, 0xa

    if-eq v14, v15, :cond_60

    .line 668
    const-string v14, "BluetoothService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Oops: enable BT in state "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/server/BluetoothService;->mBluetoothState:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    const/4 v14, 0x0

    goto :goto_1a

    .line 671
    :cond_60
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mEnableThread:Landroid/server/BluetoothService$EnableThread;

    move-object v14, v0

    if-eqz v14, :cond_7b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mEnableThread:Landroid/server/BluetoothService$EnableThread;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/server/BluetoothService$EnableThread;->isAlive()Z

    move-result v14

    if-eqz v14, :cond_7b

    .line 672
    const-string v14, "BluetoothService"

    const-string v15, "Oops: enable BT when enable thread is alive..."

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/4 v14, 0x0

    goto :goto_1a

    .line 677
    :cond_7b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    move-object v14, v0

    const-string v15, "device_policy"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/admin/DevicePolicyManager;

    .line 679
    .local v9, mDPM:Landroid/app/admin/DevicePolicyManager;
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Landroid/app/admin/DevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v14

    if-nez v14, :cond_c9

    .line 681
    const-string v14, "BluetoothService"

    const-string v15, "Exchange IT Policy has disabled Bluetooth. Cannot enable"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const/4 v14, 0x0

    sput v14, Landroid/server/BluetoothService;->mPolicy:I

    .line 683
    new-instance v8, Landroid/content/Intent;

    const-string v14, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v8, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 684
    .local v8, intent:Landroid/content/Intent;
    const-string v14, "android.bluetooth.adapter.extra.STATE"

    const/16 v15, 0xa

    invoke-virtual {v8, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    move-object v14, v0

    const-string v15, "android.permission.BLUETOOTH"

    invoke-virtual {v14, v8, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    move-object v15, v0

    const/16 v16, 0x9

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    const-wide/16 v16, 0x64

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 687
    const/4 v14, 0x0

    goto/16 :goto_1a

    .line 695
    .end local v8           #intent:Landroid/content/Intent;
    :cond_c9
    const-string/jumbo v14, "service.brcm.bt.soft_onoff"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 696
    .local v13, soft_onoff_prop:Ljava/lang/String;
    const-string/jumbo v14, "service.brcm.bt.hcid_active"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 700
    .local v10, prop:Ljava/lang/String;
    if-eqz v10, :cond_110

    const-string v14, "1"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_110

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    move-object v14, v0

    const-string v15, "bluetooth_fm_receiver_service"

    invoke-static {v14, v15}, Lcom/broadcom/bt/service/fm/FmServiceConfig;->isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_110

    .line 702
    const/16 v14, 0xb

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Landroid/server/BluetoothService;->setBluetoothState(I)V

    .line 703
    new-instance v14, Landroid/server/BluetoothService$EnableThread;

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/server/BluetoothService$EnableThread;-><init>(Landroid/server/BluetoothService;Z)V

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/server/BluetoothService;->mEnableThread:Landroid/server/BluetoothService$EnableThread;

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mEnableThread:Landroid/server/BluetoothService$EnableThread;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/server/BluetoothService$EnableThread;->start()V

    .line 705
    const/4 v14, 0x1

    goto/16 :goto_1a

    .line 708
    :cond_110
    if-eqz v10, :cond_169

    const-string v14, "1"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_169

    .line 709
    const-string v14, "BluetoothService"

    const-string v15, "Oops: bluetoothd is still active. Stop it now..."

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const-string v14, "ctl.stop"

    const-string v15, "bluetoothd"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    const/4 v3, 0x1

    .line 716
    .local v3, bluetoothdRunning:Z
    :goto_129
    if-eqz v13, :cond_16b

    const-string v14, "1"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_130
    .catchall {:try_start_1e .. :try_end_130} :catchall_2bb

    move-result v14

    if-eqz v14, :cond_16b

    .line 719
    const/4 v6, 0x0

    .line 731
    .local v6, btldRunning:Z
    :goto_134
    const/4 v11, 0x4

    .local v11, retryCnt:I
    move v12, v11

    .line 732
    .end local v11           #retryCnt:I
    .local v12, retryCnt:I
    :goto_136
    if-nez v3, :cond_13a

    if-eqz v6, :cond_18e

    :cond_13a
    add-int/lit8 v11, v12, -0x1

    .end local v12           #retryCnt:I
    .restart local v11       #retryCnt:I
    if-lez v12, :cond_18f

    .line 734
    const-wide/16 v14, 0xfa

    :try_start_140
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_143
    .catchall {:try_start_140 .. :try_end_143} :catchall_2bb
    .catch Ljava/lang/InterruptedException; {:try_start_140 .. :try_end_143} :catch_2b5

    .line 737
    :goto_143
    if-eqz v3, :cond_155

    :try_start_145
    const-string/jumbo v14, "service.brcm.bt.hcid_active"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "1"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_155

    .line 739
    const/4 v3, 0x0

    .line 741
    :cond_155
    if-eqz v6, :cond_2c1

    const-string/jumbo v14, "service.brcm.bt.srv_active"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "1"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2c1

    .line 743
    const/4 v6, 0x0

    move v12, v11

    .end local v11           #retryCnt:I
    .restart local v12       #retryCnt:I
    goto :goto_136

    .line 714
    .end local v3           #bluetoothdRunning:Z
    .end local v6           #btldRunning:Z
    .end local v12           #retryCnt:I
    :cond_169
    const/4 v3, 0x0

    .restart local v3       #bluetoothdRunning:Z
    goto :goto_129

    .line 721
    :cond_16b
    const-string/jumbo v14, "service.brcm.bt.srv_active"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 722
    if-eqz v10, :cond_18c

    const-string v14, "1"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_18c

    .line 723
    const-string v14, "BluetoothService"

    const-string v15, "Oops: btld is still active. Stop it now..."

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    const-string v14, "ctl.stop"

    const-string v15, "btld"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    const/4 v6, 0x1

    .restart local v6       #btldRunning:Z
    goto :goto_134

    .line 728
    .end local v6           #btldRunning:Z
    :cond_18c
    const/4 v6, 0x0

    .restart local v6       #btldRunning:Z
    goto :goto_134

    .restart local v12       #retryCnt:I
    :cond_18e
    move v11, v12

    .line 746
    .end local v12           #retryCnt:I
    .restart local v11       #retryCnt:I
    :cond_18f
    if-nez v3, :cond_193

    if-eqz v6, :cond_1b5

    .line 747
    :cond_193
    if-eqz v3, :cond_1a4

    .line 748
    const-string/jumbo v14, "service.brcm.bt.hcid_active"

    const-string v15, "0"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    const-string v14, "BluetoothService"

    const-string v15, "Oops: bluetoothd stop timed out. Give up..."

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_1a4
    if-eqz v6, :cond_1b5

    .line 752
    const-string/jumbo v14, "service.brcm.bt.srv_active"

    const-string v15, "0"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    const-string v14, "BluetoothService"

    const-string v15, "Oops: btld stop timed out. Give up..."

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    :cond_1b5
    if-eqz v13, :cond_23c

    const-string v14, "1"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_23c

    .line 772
    const/4 v5, 0x0

    .line 783
    .local v5, btldActive:Z
    :goto_1c0
    const-string/jumbo v14, "service.brcm.bt.activation"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "1"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_260

    .line 784
    const-string v14, "BluetoothService"

    const-string v15, "Oops: service.brcm.bt.activation is set. Clear it now!"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    const-string/jumbo v14, "service.brcm.bt.activation"

    const-string v15, "0"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1de
    .catchall {:try_start_145 .. :try_end_1de} :catchall_2bb

    .line 786
    const/4 v4, 0x1

    .line 793
    .local v4, btActivation:Z
    :goto_1df
    const/4 v11, 0x5

    move v12, v11

    .line 794
    .end local v11           #retryCnt:I
    .restart local v12       #retryCnt:I
    :goto_1e1
    if-nez v3, :cond_1e9

    if-nez v6, :cond_1e9

    if-nez v5, :cond_1e9

    if-eqz v4, :cond_263

    :cond_1e9
    add-int/lit8 v11, v12, -0x1

    .end local v12           #retryCnt:I
    .restart local v11       #retryCnt:I
    if-lez v12, :cond_264

    .line 796
    const-wide/16 v14, 0xfa

    :try_start_1ef
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1f2
    .catchall {:try_start_1ef .. :try_end_1f2} :catchall_2bb
    .catch Ljava/lang/InterruptedException; {:try_start_1ef .. :try_end_1f2} :catch_2b8

    .line 799
    :goto_1f2
    if-eqz v3, :cond_204

    :try_start_1f4
    const-string/jumbo v14, "service.brcm.bt.hcid_active"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "1"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_204

    .line 801
    const/4 v3, 0x0

    .line 803
    :cond_204
    if-eqz v6, :cond_216

    const-string/jumbo v14, "service.brcm.bt.srv_active"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "1"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_216

    .line 805
    const/4 v6, 0x0

    .line 807
    :cond_216
    if-eqz v5, :cond_228

    const-string/jumbo v14, "service.brcm.bt.btld"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "1"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_228

    .line 809
    const/4 v5, 0x0

    .line 811
    :cond_228
    if-eqz v4, :cond_2be

    const-string/jumbo v14, "service.brcm.bt.activation"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "1"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2be

    .line 813
    const/4 v4, 0x0

    move v12, v11

    .end local v11           #retryCnt:I
    .restart local v12       #retryCnt:I
    goto :goto_1e1

    .line 774
    .end local v4           #btActivation:Z
    .end local v5           #btldActive:Z
    .end local v12           #retryCnt:I
    .restart local v11       #retryCnt:I
    :cond_23c
    const-string/jumbo v14, "service.brcm.bt.btld"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "1"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_25d

    .line 775
    const-string v14, "BluetoothService"

    const-string v15, "Oops: service.brcm.bt.btld is set. Clear it now!"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    const-string/jumbo v14, "service.brcm.bt.btld"

    const-string v15, "0"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    const/4 v5, 0x1

    .restart local v5       #btldActive:Z
    goto/16 :goto_1c0

    .line 779
    .end local v5           #btldActive:Z
    :cond_25d
    const/4 v5, 0x0

    .restart local v5       #btldActive:Z
    goto/16 :goto_1c0

    .line 789
    :cond_260
    const/4 v4, 0x0

    .restart local v4       #btActivation:Z
    goto/16 :goto_1df

    .end local v11           #retryCnt:I
    .restart local v12       #retryCnt:I
    :cond_263
    move v11, v12

    .line 816
    .end local v12           #retryCnt:I
    .restart local v11       #retryCnt:I
    :cond_264
    if-nez v3, :cond_26c

    if-nez v6, :cond_26c

    if-nez v5, :cond_26c

    if-eqz v4, :cond_293

    .line 817
    :cond_26c
    if-eqz v3, :cond_275

    .line 818
    const-string v14, "BluetoothService"

    const-string v15, "Oops: Reset property service.brcm.bt.hcid_active timed out. Give up..."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :cond_275
    if-eqz v6, :cond_27e

    .line 821
    const-string v14, "BluetoothService"

    const-string v15, "Oops: Reset property service.brcm.bt.srv_active timed out. Give up..."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_27e
    if-eqz v5, :cond_287

    .line 824
    const-string v14, "BluetoothService"

    const-string v15, "Oops: Reset property service.brcm.bt.btld timed out. Give up..."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :cond_287
    if-nez v4, :cond_290

    .line 827
    const-string v14, "BluetoothService"

    const-string v15, "Oops: Reset property service.brcm.bt.activation timed out. Give up..."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_290
    const/4 v14, 0x0

    goto/16 :goto_1a

    .line 833
    :cond_293
    const/16 v14, 0xb

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Landroid/server/BluetoothService;->setBluetoothState(I)V

    .line 834
    new-instance v14, Landroid/server/BluetoothService$EnableThread;

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/server/BluetoothService$EnableThread;-><init>(Landroid/server/BluetoothService;Z)V

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/server/BluetoothService;->mEnableThread:Landroid/server/BluetoothService$EnableThread;

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mEnableThread:Landroid/server/BluetoothService$EnableThread;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/server/BluetoothService$EnableThread;->start()V
    :try_end_2b2
    .catchall {:try_start_1f4 .. :try_end_2b2} :catchall_2bb

    .line 836
    const/4 v14, 0x1

    goto/16 :goto_1a

    .line 735
    .end local v4           #btActivation:Z
    .end local v5           #btldActive:Z
    :catch_2b5
    move-exception v14

    goto/16 :goto_143

    .line 797
    .restart local v4       #btActivation:Z
    .restart local v5       #btldActive:Z
    :catch_2b8
    move-exception v14

    goto/16 :goto_1f2

    .line 638
    .end local v3           #bluetoothdRunning:Z
    .end local v4           #btActivation:Z
    .end local v5           #btldActive:Z
    .end local v6           #btldRunning:Z
    .end local v9           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v10           #prop:Ljava/lang/String;
    .end local v11           #retryCnt:I
    .end local v13           #soft_onoff_prop:Ljava/lang/String;
    :catchall_2bb
    move-exception v14

    monitor-exit p0

    throw v14

    .restart local v3       #bluetoothdRunning:Z
    .restart local v4       #btActivation:Z
    .restart local v5       #btldActive:Z
    .restart local v6       #btldRunning:Z
    .restart local v9       #mDPM:Landroid/app/admin/DevicePolicyManager;
    .restart local v10       #prop:Ljava/lang/String;
    .restart local v11       #retryCnt:I
    .restart local v13       #soft_onoff_prop:Ljava/lang/String;
    :cond_2be
    move v12, v11

    .end local v11           #retryCnt:I
    .restart local v12       #retryCnt:I
    goto/16 :goto_1e1

    .end local v4           #btActivation:Z
    .end local v5           #btldActive:Z
    .end local v12           #retryCnt:I
    .restart local v11       #retryCnt:I
    :cond_2c1
    move v12, v11

    .end local v11           #retryCnt:I
    .restart local v12       #retryCnt:I
    goto/16 :goto_136
.end method

.method public declared-synchronized fetchRemoteDiInfo(Ljava/lang/String;)V
    .registers 6
    .parameter "remoteAddress"

    .prologue
    const-string v1, "BluetoothService"

    .line 3185
    monitor-enter p0

    :try_start_3
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3187
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 3188
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Remote address invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_5d

    .line 3205
    :goto_2a
    monitor-exit p0

    return-void

    .line 3192
    :cond_2c
    :try_start_2c
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getBondState(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_3e

    .line 3193
    const-string v1, "BluetoothService"

    const-string v2, "Device not bonded - Creating first"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3194
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->createDeviceNative(Ljava/lang/String;)Z

    .line 3197
    :cond_3e
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3198
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_60

    .line 3199
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Object path not found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_2c .. :try_end_5c} :catchall_5d

    goto :goto_2a

    .line 3185
    .end local v0           #path:Ljava/lang/String;
    :catchall_5d
    move-exception v1

    monitor-exit p0

    throw v1

    .line 3203
    .restart local v0       #path:Ljava/lang/String;
    :cond_60
    :try_start_60
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetchRemoteDiInfo("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3204
    invoke-direct {p0, v0, p1}, Landroid/server/BluetoothService;->fetchRemoteDiInfoNative(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_81
    .catchall {:try_start_60 .. :try_end_81} :catchall_5d

    goto :goto_2a
.end method

.method public declared-synchronized fetchRemoteUuids(Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothCallback;)Z
    .registers 12
    .parameter "address"
    .parameter "uuid"
    .parameter "callback"

    .prologue
    const/4 v7, 0x0

    .line 2327
    monitor-enter p0

    :try_start_2
    iget-object v4, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH"

    const-string v6, "Need BLUETOOTH permission"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2328
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_8e

    move-result v4

    if-nez v4, :cond_14

    move v4, v7

    .line 2387
    :goto_12
    monitor-exit p0

    return v4

    .line 2330
    :cond_14
    :try_start_14
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1c

    move v4, v7

    .line 2331
    goto :goto_12

    .line 2334
    :cond_1c
    new-instance v3, Landroid/server/BluetoothService$RemoteService;

    invoke-direct {v3, p1, p2}, Landroid/server/BluetoothService$RemoteService;-><init>(Ljava/lang/String;Landroid/os/ParcelUuid;)V

    .line 2335
    .local v3, service:Landroid/server/BluetoothService$RemoteService;
    if-eqz p2, :cond_2d

    iget-object v4, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2d

    move v4, v7

    .line 2338
    goto :goto_12

    .line 2341
    :cond_2d
    iget-object v4, p0, Landroid/server/BluetoothService;->mUuidIntentTracker:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 2344
    if-eqz p2, :cond_41

    .line 2345
    iget-object v4, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    new-instance v5, Landroid/server/BluetoothService$RemoteService;

    invoke-direct {v5, p1, p2}, Landroid/server/BluetoothService$RemoteService;-><init>(Ljava/lang/String;Landroid/os/ParcelUuid;)V

    invoke-virtual {v4, v5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2347
    :cond_41
    const/4 v4, 0x1

    goto :goto_12

    .line 2365
    :cond_43
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->isRemoteDeviceInCache(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getRemoteUuids(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v4

    if-nez v4, :cond_52

    .line 2366
    :cond_4f
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->createDeviceNative(Ljava/lang/String;)Z

    .line 2369
    :cond_52
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2370
    .local v1, path:Ljava/lang/String;
    if-nez v1, :cond_5a

    move v4, v7

    goto :goto_12

    .line 2372
    :cond_5a
    if-nez p2, :cond_85

    .line 2374
    const-string v4, "GET_ALL_SERVICES"

    invoke-virtual {p0, v1, v4}, Landroid/server/BluetoothService;->discoverServicesNative(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 2379
    .local v2, ret:Z
    :goto_62
    iget-object v4, p0, Landroid/server/BluetoothService;->mUuidIntentTracker:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2380
    if-eqz p2, :cond_73

    .line 2381
    iget-object v4, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    new-instance v5, Landroid/server/BluetoothService$RemoteService;

    invoke-direct {v5, p1, p2}, Landroid/server/BluetoothService$RemoteService;-><init>(Ljava/lang/String;Landroid/os/ParcelUuid;)V

    invoke-virtual {v4, v5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2384
    :cond_73
    iget-object v4, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2385
    .local v0, message:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2386
    iget-object v4, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x1770

    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v4, v2

    .line 2387
    goto :goto_12

    .line 2376
    .end local v0           #message:Landroid/os/Message;
    .end local v2           #ret:Z
    :cond_85
    invoke-virtual {p2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Landroid/server/BluetoothService;->discoverServicesNative(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_8c
    .catchall {:try_start_14 .. :try_end_8c} :catchall_8e

    move-result v2

    .restart local v2       #ret:Z
    goto :goto_62

    .line 2327
    .end local v1           #path:Ljava/lang/String;
    .end local v2           #ret:Z
    .end local v3           #service:Landroid/server/BluetoothService$RemoteService;
    :catchall_8e
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 448
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/server/BluetoothService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 450
    :try_start_7
    invoke-direct {p0}, Landroid/server/BluetoothService;->cleanupNativeDataNative()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_e

    .line 452
    invoke-super {p0}, Landroid/bluetooth/IBluetooth$Stub;->finalize()V

    .line 454
    return-void

    .line 452
    :catchall_e
    move-exception v0

    invoke-super {p0}, Landroid/bluetooth/IBluetooth$Stub;->finalize()V

    throw v0
.end method

.method public declared-synchronized getAddress()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1779
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1780
    const-string v0, "Address"

    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_12

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1779
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "objectPath"

    .prologue
    const/4 v4, 0x0

    const-string v6, "getAddressFromObjectPath: AdapterObjectPath:"

    const-string v5, "BluetoothService"

    .line 3001
    const-string v2, "ObjectPath"

    invoke-virtual {p0, v2}, Landroid/server/BluetoothService;->getPropertyInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3002
    .local v0, adapterObjectPath:Ljava/lang/String;
    if-eqz v0, :cond_f

    if-nez p1, :cond_39

    .line 3003
    :cond_f
    const-string v2, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAddressFromObjectPath: AdapterObjectPath:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  or deviceObjectPath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 3017
    :goto_38
    return-object v2

    .line 3007
    :cond_39
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_69

    .line 3008
    const-string v2, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAddressFromObjectPath: AdapterObjectPath:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  is not a prefix of deviceObjectPath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bluetoothd crashed ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 3011
    goto :goto_38

    .line 3013
    :cond_69
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 3014
    .local v1, address:Ljava/lang/String;
    if-eqz v1, :cond_7c

    const/16 v2, 0x5f

    const/16 v3, 0x3a

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    goto :goto_38

    .line 3016
    :cond_7c
    const-string v2, "BluetoothService"

    const-string v2, "getAddressFromObjectPath: Address being returned is null"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 3017
    goto :goto_38
.end method

.method declared-synchronized getAllProperties()V
    .registers 14

    .prologue
    const-string v9, "BluetoothService"

    .line 1561
    monitor-enter p0

    :try_start_3
    iget-object v9, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.BLUETOOTH"

    const-string v11, "Need BLUETOOTH permission"

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    iget-object v9, p0, Landroid/server/BluetoothService;->mAdapterProperties:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->clear()V

    .line 1564
    invoke-direct {p0}, Landroid/server/BluetoothService;->getAdapterPropertiesNative()[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    move-object v0, v9

    check-cast v0, [Ljava/lang/String;

    move-object v7, v0

    .line 1566
    .local v7, properties:[Ljava/lang/String;
    if-nez v7, :cond_26

    .line 1567
    const-string v9, "BluetoothService"

    const-string v10, "*Error*: GetAdapterProperties returned NULL"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_8f

    .line 1599
    :cond_24
    :goto_24
    monitor-exit p0

    return-void

    .line 1571
    :cond_26
    const/4 v2, 0x0

    .local v2, i:I
    :goto_27
    :try_start_27
    array-length v9, v7

    if-ge v2, v9, :cond_97

    .line 1572
    aget-object v5, v7, v2

    .line 1573
    .local v5, name:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1575
    .local v6, newValue:Ljava/lang/String;
    if-nez v5, :cond_50

    .line 1576
    const-string v9, "BluetoothService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error:Adapter Property at index"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "is null"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    :goto_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 1579
    :cond_50
    const-string v9, "Devices"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_60

    const-string v9, "UUIDs"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_92

    .line 1580
    :cond_60
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1581
    .local v8, str:Ljava/lang/StringBuilder;
    add-int/lit8 v2, v2, 0x1

    aget-object v9, v7, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1582
    .local v4, len:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_72
    if-ge v3, v4, :cond_83

    .line 1583
    add-int/lit8 v2, v2, 0x1

    aget-object v9, v7, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1584
    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1582
    add-int/lit8 v3, v3, 0x1

    goto :goto_72

    .line 1586
    :cond_83
    if-lez v4, :cond_89

    .line 1587
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1592
    .end local v3           #j:I
    .end local v4           #len:I
    .end local v8           #str:Ljava/lang/StringBuilder;
    :cond_89
    :goto_89
    iget-object v9, p0, Landroid/server/BluetoothService;->mAdapterProperties:Ljava/util/Map;

    invoke-interface {v9, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8e
    .catchall {:try_start_27 .. :try_end_8e} :catchall_8f

    goto :goto_4d

    .line 1561
    .end local v2           #i:I
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #newValue:Ljava/lang/String;
    .end local v7           #properties:[Ljava/lang/String;
    :catchall_8f
    move-exception v9

    monitor-exit p0

    throw v9

    .line 1590
    .restart local v2       #i:I
    .restart local v5       #name:Ljava/lang/String;
    .restart local v6       #newValue:Ljava/lang/String;
    .restart local v7       #properties:[Ljava/lang/String;
    :cond_92
    add-int/lit8 v2, v2, 0x1

    :try_start_94
    aget-object v6, v7, v2

    goto :goto_89

    .line 1596
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #newValue:Ljava/lang/String;
    :cond_97
    invoke-direct {p0}, Landroid/server/BluetoothService;->getAdapterPathNative()Ljava/lang/String;

    move-result-object v1

    .line 1597
    .local v1, adapterPath:Ljava/lang/String;
    if-eqz v1, :cond_24

    .line 1598
    iget-object v9, p0, Landroid/server/BluetoothService;->mAdapterProperties:Ljava/util/Map;

    const-string v10, "ObjectPath"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/dev_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b7
    .catchall {:try_start_94 .. :try_end_b7} :catchall_8f

    goto/16 :goto_24
.end method

.method public getBluetoothState()I
    .registers 4

    .prologue
    .line 466
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget v0, p0, Landroid/server/BluetoothService;->mBluetoothState:I

    return v0
.end method

.method public declared-synchronized getBondState(Ljava/lang/String;)I
    .registers 5
    .parameter "address"

    .prologue
    .line 2076
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2077
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1f

    move-result v0

    if-nez v0, :cond_14

    .line 2078
    const/high16 v0, -0x8000

    .line 2080
    :goto_12
    monitor-exit p0

    return v0

    :cond_14
    :try_start_14
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/server/BluetoothService$BondState;->getBondState(Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1f

    move-result v0

    goto :goto_12

    .line 2076
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getConnectedDeviceCount()I
    .registers 2

    .prologue
    .line 1763
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/server/BluetoothService;->mAclLinkCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getDeviceOutOfBandData(Landroid/bluetooth/BluetoothDevice;)Landroid/util/Pair;
    .registers 4
    .parameter "device"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Landroid/util/Pair",
            "<[B[B>;"
        }
    .end annotation

    .prologue
    .line 2014
    iget-object v0, p0, Landroid/server/BluetoothService;->mDeviceOobData:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/util/Pair;

    return-object p0
.end method

.method public declared-synchronized getDiscoverableTimeout()I
    .registers 5

    .prologue
    .line 1873
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1874
    const-string v1, "DiscoverableTimeout"

    invoke-virtual {p0, v1}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1875
    .local v0, timeout:Ljava/lang/String;
    if-eqz v0, :cond_1c

    .line 1876
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1e

    move-result v1

    .line 1878
    :goto_1a
    monitor-exit p0

    return v1

    :cond_1c
    const/4 v1, -0x1

    goto :goto_1a

    .line 1873
    .end local v0           #timeout:Ljava/lang/String;
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized getDockPin()Ljava/lang/String;
    .registers 2

    .prologue
    .line 400
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getHidInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "address"

    .prologue
    .line 3212
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->getHidInfoNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1784
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1822
    const-string v0, "Name"

    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_12

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1784
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "address"

    .prologue
    .line 3021
    const-string v1, "ObjectPath"

    invoke-virtual {p0, v1}, Landroid/server/BluetoothService;->getPropertyInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3022
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_11

    .line 3023
    const-string v1, "BluetoothService"

    const-string v2, "Error: Object Path is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3024
    const/4 v1, 0x0

    .line 3027
    :goto_10
    return-object v1

    .line 3026
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    const-string v3, "_"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 3027
    goto :goto_10
.end method

.method declared-synchronized getPendingOutgoingBonding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1195
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0}, Landroid/server/BluetoothService$BondState;->getPendingOutgoingBonding()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "name"

    .prologue
    .line 1767
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_f

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    .line 1768
    :goto_8
    monitor-exit p0

    return-object v0

    :cond_a
    :try_start_a
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getPropertyInternal(Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_f

    move-result-object v0

    goto :goto_8

    .line 1767
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getPropertyInternal(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "name"

    .prologue
    .line 1772
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapterProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1773
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapterProperties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_1f

    .line 1775
    :goto_11
    monitor-exit p0

    return-object v0

    .line 1774
    :cond_13
    :try_start_13
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getAllProperties()V

    .line 1775
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapterProperties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_1f

    goto :goto_11

    .line 1772
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRemoteClass(Ljava/lang/String;)I
    .registers 7
    .parameter "address"

    .prologue
    const/high16 v4, -0x100

    .line 2275
    monitor-enter p0

    :try_start_3
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 2276
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_28

    move v1, v4

    .line 2283
    :goto_13
    monitor-exit p0

    return v1

    .line 2279
    :cond_15
    :try_start_15
    const-string v1, "Class"

    invoke-virtual {p0, p1, v1}, Landroid/server/BluetoothService;->getRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2280
    .local v0, val:Ljava/lang/String;
    if-nez v0, :cond_1f

    move v1, v4

    .line 2281
    goto :goto_13

    .line 2283
    :cond_1f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_26
    .catchall {:try_start_15 .. :try_end_26} :catchall_28

    move-result v1

    goto :goto_13

    .line 2275
    .end local v0           #val:Ljava/lang/String;
    :catchall_28
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getRemoteDeviceProperties(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .parameter "address"

    .prologue
    .line 2105
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x0

    .line 2108
    .end local p0
    :goto_7
    return-object v1

    .line 2107
    .restart local p0
    :cond_8
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2108
    .local v0, objectPath:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/server/BluetoothService;->getDevicePropertiesNative(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    move-object v1, p0

    goto :goto_7
.end method

.method declared-synchronized getRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "address"
    .parameter "property"

    .prologue
    .line 2112
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceProperties:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2113
    .local v0, properties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_13

    .line 2114
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_43

    .line 2123
    :goto_11
    monitor-exit p0

    return-object v1

    .line 2119
    :cond_13
    :try_start_13
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->updateRemoteDevicePropertiesCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 2120
    invoke-virtual {p0, p1, p2}, Landroid/server/BluetoothService;->getRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    .line 2122
    :cond_1e
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRemoteDeviceProperty: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "not present:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_13 .. :try_end_41} :catchall_43

    .line 2123
    const/4 v1, 0x0

    goto :goto_11

    .line 2112
    .end local v0           #properties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_43
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getRemoteName(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "address"

    .prologue
    .line 1838
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1839
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_3b

    move-result v2

    if-nez v2, :cond_13

    .line 1840
    const/4 v2, 0x0

    .line 1860
    :goto_11
    monitor-exit p0

    return-object v2

    .line 1846
    :cond_13
    :try_start_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1847
    .local v0, ms:J
    iget-object v2, p0, Landroid/server/BluetoothService;->mLastRemoteAddress:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1848
    iget-wide v2, p0, Landroid/server/BluetoothService;->mLastRemoteMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_2e

    .line 1850
    iget-object v2, p0, Landroid/server/BluetoothService;->mLastRemoteName:Ljava/lang/String;

    goto :goto_11

    .line 1854
    :cond_2c
    iput-object p1, p0, Landroid/server/BluetoothService;->mLastRemoteAddress:Ljava/lang/String;

    .line 1857
    :cond_2e
    const-string v2, "Name"

    invoke-virtual {p0, p1, v2}, Landroid/server/BluetoothService;->getRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/server/BluetoothService;->mLastRemoteName:Ljava/lang/String;

    .line 1858
    iput-wide v0, p0, Landroid/server/BluetoothService;->mLastRemoteMs:J

    .line 1860
    iget-object v2, p0, Landroid/server/BluetoothService;->mLastRemoteName:Ljava/lang/String;
    :try_end_3a
    .catchall {:try_start_13 .. :try_end_3a} :catchall_3b

    goto :goto_11

    .line 1838
    .end local v0           #ms:J
    :catchall_3b
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getRemoteServiceChannel(Ljava/lang/String;Landroid/os/ParcelUuid;)I
    .registers 8
    .parameter "address"
    .parameter "uuid"

    .prologue
    const/4 v4, -0x1

    .line 2401
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2402
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v1

    if-nez v1, :cond_12

    move v1, v4

    .line 2416
    .end local p0
    :goto_11
    return v1

    .line 2404
    .restart local p0
    :cond_12
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 2405
    const/high16 v1, -0x8000

    goto :goto_11

    .line 2408
    :cond_1b
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceProperties:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 2409
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->updateRemoteDevicePropertiesCache(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2b

    move v1, v4

    .line 2410
    goto :goto_11

    .line 2413
    :cond_2b
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceServiceChannelCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2414
    .local v0, value:Ljava/util/Map;,"Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_46

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 2415
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_11

    .restart local p0
    :cond_46
    move v1, v4

    .line 2416
    goto :goto_11
.end method

.method public declared-synchronized getRemoteServices(Ljava/lang/String;)Z
    .registers 7
    .parameter "address"

    .prologue
    const/4 v4, 0x0

    .line 3032
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3033
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_33

    move-result v1

    if-nez v1, :cond_14

    move v1, v4

    .line 3046
    :goto_12
    monitor-exit p0

    return v1

    .line 3037
    :cond_14
    :try_start_14
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getBondState(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_24

    .line 3038
    const-string v1, "getRemoteServices()...Device not bonded... Creating first..."

    invoke-static {v1}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 3039
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->createDeviceNative(Ljava/lang/String;)Z

    .line 3042
    :cond_24
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3043
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_2c

    move v1, v4

    goto :goto_12

    .line 3045
    :cond_2c
    const-string v1, "GET_ALL_SERVICES"

    invoke-virtual {p0, v0, v1}, Landroid/server/BluetoothService;->discoverServicesNative(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_31
    .catchall {:try_start_14 .. :try_end_31} :catchall_33

    .line 3046
    const/4 v1, 0x1

    goto :goto_12

    .line 3032
    .end local v0           #path:Ljava/lang/String;
    :catchall_33
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getRemoteUuids(Ljava/lang/String;)[Landroid/os/ParcelUuid;
    .registers 5
    .parameter "address"

    .prologue
    .line 2294
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2295
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-nez v0, :cond_13

    .line 2296
    const/4 v0, 0x0

    .line 2298
    :goto_11
    monitor-exit p0

    return-object v0

    :cond_13
    :try_start_13
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->getUuidFromCache(Ljava/lang/String;)[Landroid/os/ParcelUuid;
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result-object v0

    goto :goto_11

    .line 2294
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getScanMode()I
    .registers 6

    .prologue
    const-string/jumbo v2, "true"

    .line 1882
    monitor-enter p0

    :try_start_4
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1883
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_36

    move-result v2

    if-nez v2, :cond_17

    .line 1884
    const/16 v2, 0x14

    .line 1888
    :goto_15
    monitor-exit p0

    return v2

    .line 1886
    :cond_17
    :try_start_17
    const-string v2, "Pairable"

    invoke-virtual {p0, v2}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1887
    .local v1, pairable:Z
    const-string v2, "Discoverable"

    invoke-virtual {p0, v2}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1888
    .local v0, discoverable:Z
    invoke-static {v1, v0}, Landroid/server/BluetoothService;->bluezStringToScanMode(ZZ)I
    :try_end_34
    .catchall {:try_start_17 .. :try_end_34} :catchall_36

    move-result v2

    goto :goto_15

    .line 1882
    .end local v0           #discoverable:Z
    .end local v1           #pairable:Z
    :catchall_36
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getTrustState(Ljava/lang/String;)Z
    .registers 7
    .parameter "address"

    .prologue
    const/4 v4, 0x0

    .line 2216
    monitor-enter p0

    :try_start_2
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 2217
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_2b

    move v1, v4

    .line 2225
    :goto_12
    monitor-exit p0

    return v1

    .line 2221
    :cond_14
    :try_start_14
    const-string v1, "Trusted"

    invoke-virtual {p0, p1, v1}, Landroid/server/BluetoothService;->getRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2222
    .local v0, val:Ljava/lang/String;
    if-nez v0, :cond_1e

    move v1, v4

    .line 2223
    goto :goto_12

    .line 2225
    :cond_1e
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_2b

    move-result v1

    if-eqz v1, :cond_29

    const/4 v1, 0x1

    goto :goto_12

    :cond_29
    move v1, v4

    goto :goto_12

    .line 2216
    .end local v0           #val:Ljava/lang/String;
    :catchall_2b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized initAfterRegistration()V
    .registers 8

    .prologue
    const-string v4, "bluetooth"

    .line 404
    monitor-enter p0

    :try_start_3
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    iput-object v4, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 405
    new-instance v4, Landroid/server/BluetoothEventLoop;

    iget-object v5, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {v4, v5, v6, p0}, Landroid/server/BluetoothEventLoop;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;Landroid/server/BluetoothService;)V

    iput-object v4, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    .line 408
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 409
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v4, "broadcom.android.bluetooth.intent.action.CALL_STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 410
    const-string v4, "android.bluetooth.device.action.PROFILE_DISCONNECTED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 411
    const-string v4, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 412
    const-string v4, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 414
    const-string v4, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 416
    const-string v4, "com.sktelecom.dmc.intent.action.DCMO_BT_SET"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 420
    const-string v4, "android.systemui.statusbar.action.BLUETOOTH_ON"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 424
    iget-object v4, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 425
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v4, "airplane_mode_radios"

    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, airplaneModeRadios:Ljava/lang/String;
    const-string v4, "airplane_mode_toggleable_radios"

    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 430
    .local v3, toggleableRadios:Ljava/lang/String;
    if-nez v0, :cond_71

    const/4 v4, 0x1

    :goto_53
    iput-boolean v4, p0, Landroid/server/BluetoothService;->mIsAirplaneSensitive:Z

    .line 432
    if-nez v3, :cond_78

    const/4 v4, 0x0

    :goto_58
    iput-boolean v4, p0, Landroid/server/BluetoothService;->mIsAirplaneToggleable:Z

    .line 435
    iget-boolean v4, p0, Landroid/server/BluetoothService;->mIsAirplaneSensitive:Z

    if-eqz v4, :cond_63

    .line 436
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 439
    :cond_63
    const-string v4, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 442
    iget-object v4, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/server/BluetoothService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_6f
    .catchall {:try_start_3 .. :try_end_6f} :catchall_7f

    .line 444
    monitor-exit p0

    return-void

    .line 430
    :cond_71
    :try_start_71
    const-string v4, "bluetooth"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    goto :goto_53

    .line 432
    :cond_78
    const-string v4, "bluetooth"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_7d
    .catchall {:try_start_71 .. :try_end_7d} :catchall_7f

    move-result v4

    goto :goto_58

    .line 404
    .end local v0           #airplaneModeRadios:Ljava/lang/String;
    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v3           #toggleableRadios:Ljava/lang/String;
    :catchall_7f
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method declared-synchronized isAdapterPropertiesEmpty()Z
    .registers 2

    .prologue
    .line 1556
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapterProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isAutoPairingWhitelisted(Ljava/lang/String;)Z
    .registers 3
    .parameter "address"

    .prologue
    .line 1158
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->hasAutoPairingFailed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->isAutoPairingWhitelisted(Ljava/lang/String;)Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_16

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_12
    monitor-exit p0

    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_12

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isBluetoothDock(Ljava/lang/String;)Z
    .registers 6
    .parameter "address"

    .prologue
    .line 2094
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth_service_settings"

    iget-object v3, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2097
    .local v0, sp:Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dock_bluetooth_address"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_25

    move-result v1

    monitor-exit p0

    return v1

    .line 2094
    .end local v0           #sp:Landroid/content/SharedPreferences;
    :catchall_25
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isDiscovering()Z
    .registers 4

    .prologue
    .line 1927
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1928
    iget-boolean v0, p0, Landroid/server/BluetoothService;->mIsDiscovering:Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return v0

    .line 1927
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isEnabled()Z
    .registers 4

    .prologue
    .line 457
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v0

    return v0
.end method

.method isRemoteDeviceInCache(Ljava/lang/String;)Z
    .registers 3
    .parameter "address"

    .prologue
    .line 2101
    iget-object v0, p0, Landroid/server/BluetoothService;->mDeviceProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public declared-synchronized listBonds()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 2067
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2068
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/server/BluetoothService$BondState;->listInState(I)[Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_14

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 2067
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public listHidInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3216
    invoke-direct {p0}, Landroid/server/BluetoothService;->listHidInfoNative()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized listInState(I)[Ljava/lang/String;
    .registers 3
    .parameter "state"

    .prologue
    .line 2072
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->listInState(I)[Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized makeServiceChannelCallbacks(Ljava/lang/String;)V
    .registers 12
    .parameter "address"

    .prologue
    const-string v6, " "

    .line 2859
    monitor-enter p0

    :try_start_3
    iget-object v6, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2860
    .local v4, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    :cond_d
    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ae

    .line 2861
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/server/BluetoothService$RemoteService;

    .line 2866
    .local v5, service:Landroid/server/BluetoothService$RemoteService;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, v5, Landroid/server/BluetoothService$RemoteService;->timestamp:J

    sub-long v0, v6, v8

    .line 2867
    .local v0, age:J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "makeServiceChannelCallbacks: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "address"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "service age : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 2870
    iget-object v6, v5, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const-wide/16 v6, 0x1770

    cmp-long v6, v0, v6

    if-ltz v6, :cond_d

    .line 2872
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cleaning up failed UUID channel lookup: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 2874
    iget-object v6, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/IBluetoothCallback;
    :try_end_97
    .catchall {:try_start_3 .. :try_end_97} :catchall_a2

    .line 2875
    .local v2, callback:Landroid/bluetooth/IBluetoothCallback;
    if-eqz v2, :cond_9d

    .line 2877
    const/4 v6, -0x1

    :try_start_9a
    invoke-interface {v2, v6}, Landroid/bluetooth/IBluetoothCallback;->onRfcommChannelFound(I)V
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_a2
    .catch Landroid/os/RemoteException; {:try_start_9a .. :try_end_9d} :catch_a5

    .line 2881
    :cond_9d
    :goto_9d
    :try_start_9d
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V
    :try_end_a0
    .catchall {:try_start_9d .. :try_end_a0} :catchall_a2

    goto/16 :goto_d

    .line 2859
    .end local v0           #age:J
    .end local v2           #callback:Landroid/bluetooth/IBluetoothCallback;
    .end local v4           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    .end local v5           #service:Landroid/server/BluetoothService$RemoteService;
    :catchall_a2
    move-exception v6

    monitor-exit p0

    throw v6

    .line 2878
    .restart local v0       #age:J
    .restart local v2       #callback:Landroid/bluetooth/IBluetoothCallback;
    .restart local v4       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    .restart local v5       #service:Landroid/server/BluetoothService$RemoteService;
    :catch_a5
    move-exception v3

    .local v3, e:Landroid/os/RemoteException;
    :try_start_a6
    const-string v6, "BluetoothService"

    const-string v7, ""

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ad
    .catchall {:try_start_a6 .. :try_end_ad} :catchall_a2

    goto :goto_9d

    .line 2884
    .end local v0           #age:J
    .end local v2           #callback:Landroid/bluetooth/IBluetoothCallback;
    .end local v3           #e:Landroid/os/RemoteException;
    .end local v5           #service:Landroid/server/BluetoothService$RemoteService;
    :cond_ae
    monitor-exit p0

    return-void
.end method

.method notifyIncomingA2dpConnection(Ljava/lang/String;)Z
    .registers 5
    .parameter "address"

    .prologue
    .line 3154
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3156
    .local v1, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v1, :cond_17

    .line 3157
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3158
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x4

    iput v2, v0, Landroid/os/Message;->what:I

    .line 3159
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(Landroid/os/Message;)V

    .line 3160
    const/4 v2, 0x1

    .line 3162
    .end local v0           #msg:Landroid/os/Message;
    :goto_16
    return v2

    :cond_17
    const/4 v2, 0x0

    goto :goto_16
.end method

.method public notifyIncomingConnection(Ljava/lang/String;)Z
    .registers 5
    .parameter "address"

    .prologue
    .line 3142
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3144
    .local v1, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v1, :cond_17

    .line 3145
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3146
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v0, Landroid/os/Message;->what:I

    .line 3147
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(Landroid/os/Message;)V

    .line 3148
    const/4 v2, 0x1

    .line 3150
    .end local v0           #msg:Landroid/os/Message;
    :goto_16
    return v2

    :cond_17
    const/4 v2, 0x0

    goto :goto_16
.end method

.method declared-synchronized onCreatePairedDeviceResult(Ljava/lang/String;I)V
    .registers 5
    .parameter "address"
    .parameter "result"

    .prologue
    const/4 v1, 0x1

    .line 1174
    monitor-enter p0

    if-nez p2, :cond_18

    .line 1175
    const/16 v0, 0xc

    :try_start_6
    invoke-virtual {p0, p1, v0}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;I)Z

    .line 1176
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->isAutoPairingAttemptsInProgress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1177
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->clearPinAttempts(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_2b

    .line 1192
    :cond_16
    :goto_16
    monitor-exit p0

    return-void

    .line 1179
    :cond_18
    if-ne p2, v1, :cond_2e

    :try_start_1a
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->getAttempt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_2e

    .line 1181
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->addAutoPairingFailure(Ljava/lang/String;)V

    .line 1182
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothService;->pairingAttempt(Ljava/lang/String;I)V
    :try_end_2a
    .catchall {:try_start_1a .. :try_end_2a} :catchall_2b

    goto :goto_16

    .line 1174
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1183
    :cond_2e
    const/4 v0, 0x4

    if-ne p2, v0, :cond_3d

    :try_start_31
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->isAutoPairingAttemptsInProgress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1185
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothService;->pairingAttempt(Ljava/lang/String;I)V

    goto :goto_16

    .line 1187
    :cond_3d
    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0, p2}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z

    .line 1188
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->isAutoPairingAttemptsInProgress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1189
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->clearPinAttempts(Ljava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_31 .. :try_end_4f} :catchall_2b

    goto :goto_16
.end method

.method public declared-synchronized readOutOfBandData()[B
    .registers 4

    .prologue
    .line 2019
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2021
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    .line 2023
    :goto_11
    monitor-exit p0

    return-object v0

    :cond_13
    :try_start_13
    invoke-direct {p0}, Landroid/server/BluetoothService;->readAdapterOutOfBandDataNative()[B
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result-object v0

    goto :goto_11

    .line 2019
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeBond(Ljava/lang/String;)Z
    .registers 7
    .parameter "address"

    .prologue
    const/4 v4, 0x0

    .line 2046
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2048
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_2f

    move-result v1

    if-nez v1, :cond_14

    move v1, v4

    .line 2058
    :goto_12
    monitor-exit p0

    return v1

    .line 2050
    :cond_14
    :try_start_14
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    move v1, v4

    .line 2051
    goto :goto_12

    .line 2053
    :cond_1c
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 2054
    .local v0, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v0, :cond_2d

    .line 2055
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V
    :try_end_2b
    .catchall {:try_start_14 .. :try_end_2b} :catchall_2f

    .line 2056
    const/4 v1, 0x1

    goto :goto_12

    :cond_2d
    move v1, v4

    .line 2058
    goto :goto_12

    .line 2046
    .end local v0           #state:Landroid/bluetooth/BluetoothDeviceProfileState;
    :catchall_2f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeBondInternal(Ljava/lang/String;)Z
    .registers 3
    .parameter "address"

    .prologue
    .line 2063
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/server/BluetoothService;->removeDeviceNative(Ljava/lang/String;)Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    move-result v0

    monitor-exit p0

    return v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method removeRemoteDeviceProperties(Ljava/lang/String;)V
    .registers 3
    .parameter "address"

    .prologue
    .line 2176
    iget-object v0, p0, Landroid/server/BluetoothService;->mDeviceProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2177
    return-void
.end method

.method public removeServiceRecord(I)V
    .registers 5
    .parameter "handle"

    .prologue
    .line 2634
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2636
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/server/BluetoothService;->checkAndRemoveRecord(II)V

    .line 2637
    return-void
.end method

.method declared-synchronized restart()V
    .registers 3

    .prologue
    .line 873
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/server/BluetoothService;->mBluetoothState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_17

    const/16 v1, 0xc

    if-eq v0, v1, :cond_9

    .line 880
    :cond_7
    :goto_7
    monitor-exit p0

    return-void

    .line 876
    :cond_9
    const/4 v0, 0x1

    :try_start_a
    iput-boolean v0, p0, Landroid/server/BluetoothService;->mRestart:Z

    .line 877
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->disable(Z)Z

    move-result v0

    if-nez v0, :cond_7

    .line 878
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/server/BluetoothService;->mRestart:Z
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_17

    goto :goto_7

    .line 873
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendProfileStateMessage(II)V
    .registers 5
    .parameter "profile"
    .parameter "cmd"

    .prologue
    .line 3170
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3171
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 3172
    if-nez p1, :cond_f

    .line 3173
    iget-object v1, p0, Landroid/server/BluetoothService;->mHfpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    .line 3177
    :cond_e
    :goto_e
    return-void

    .line 3174
    :cond_f
    const/4 v1, 0x1

    if-ne p1, v1, :cond_e

    .line 3175
    iget-object v1, p0, Landroid/server/BluetoothService;->mA2dpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    goto :goto_e
.end method

.method declared-synchronized sendUuidIntent(Ljava/lang/String;)V
    .registers 6
    .parameter "address"

    .prologue
    .line 2847
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->getUuidFromCache(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v1

    .line 2848
    .local v1, uuid:[Landroid/os/ParcelUuid;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bleutooth.device.action.UUID"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2849
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2850
    const-string v2, "android.bluetooth.device.extra.UUID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2851
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2853
    iget-object v2, p0, Landroid/server/BluetoothService;->mUuidIntentTracker:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 2854
    iget-object v2, p0, Landroid/server/BluetoothService;->mUuidIntentTracker:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    .line 2856
    :cond_30
    monitor-exit p0

    return-void

    .line 2847
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #uuid:[Landroid/os/ParcelUuid;
    :catchall_32
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method setA2dpService(Landroid/server/BluetoothA2dpService;)V
    .registers 2
    .parameter "a2dpService"

    .prologue
    .line 3166
    iput-object p1, p0, Landroid/server/BluetoothService;->mA2dpService:Landroid/server/BluetoothA2dpService;

    .line 3167
    return-void
.end method

.method public declared-synchronized setAvStreaming(Z)Z
    .registers 3
    .parameter "avStreaming"

    .prologue
    .line 1757
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method declared-synchronized setBondState(Ljava/lang/String;I)Z
    .registers 4
    .parameter "address"
    .parameter "state"

    .prologue
    .line 2084
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, p2, v0}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_8

    move-result v0

    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setBondState(Ljava/lang/String;II)Z
    .registers 6
    .parameter "address"
    .parameter "state"
    .parameter "reason"

    .prologue
    .line 2089
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/server/BluetoothService$BondState;->setBondState(Ljava/lang/String;II)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    .line 2090
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 2089
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDeviceOutOfBandData(Ljava/lang/String;[B[B)Z
    .registers 8
    .parameter "address"
    .parameter "hash"
    .parameter "randomizer"

    .prologue
    const-string v1, ":"

    .line 1998
    monitor-enter p0

    :try_start_3
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2000
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_53

    move-result v1

    if-nez v1, :cond_15

    const/4 v1, 0x0

    .line 2010
    :goto_13
    monitor-exit p0

    return v1

    .line 2002
    :cond_15
    :try_start_15
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2005
    .local v0, value:Landroid/util/Pair;,"Landroid/util/Pair<[B[B>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting out of band data for:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 2009
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceOobData:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_51
    .catchall {:try_start_15 .. :try_end_51} :catchall_53

    .line 2010
    const/4 v1, 0x1

    goto :goto_13

    .line 1998
    .end local v0           #value:Landroid/util/Pair;,"Landroid/util/Pair<[B[B>;"
    :catchall_53
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setDiscoverableTimeout(I)Z
    .registers 5
    .parameter "timeout"

    .prologue
    .line 1646
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1648
    const-string v0, "DiscoverableTimeout"

    invoke-direct {p0, v0, p1}, Landroid/server/BluetoothService;->setPropertyInteger(Ljava/lang/String;I)Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_12

    move-result v0

    monitor-exit p0

    return v0

    .line 1646
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setIsDiscovering(Z)V
    .registers 2
    .parameter "isDiscovering"

    .prologue
    .line 1932
    iput-boolean p1, p0, Landroid/server/BluetoothService;->mIsDiscovering:Z

    .line 1933
    return-void
.end method

.method setLinkTimeout(Ljava/lang/String;I)V
    .registers 7
    .parameter "address"
    .parameter "num_slots"

    .prologue
    .line 3051
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3052
    .local v0, path:Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Landroid/server/BluetoothService;->setLinkTimeoutNative(Ljava/lang/String;I)Z

    move-result v1

    .line 3054
    .local v1, result:Z
    if-nez v1, :cond_26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set Link Timeout to:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " slots failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 3055
    :cond_26
    return-void
.end method

.method public declared-synchronized setName(Ljava/lang/String;)Z
    .registers 5
    .parameter "name"

    .prologue
    .line 1606
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_16

    .line 1608
    if-nez p1, :cond_f

    .line 1609
    const/4 v0, 0x0

    .line 1611
    :goto_d
    monitor-exit p0

    return v0

    :cond_f
    :try_start_f
    const-string v0, "Name"

    invoke-direct {p0, v0, p1}, Landroid/server/BluetoothService;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_16

    move-result v0

    goto :goto_d

    .line 1606
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPairingConfirmation(Ljava/lang/String;Z)Z
    .registers 8
    .parameter "address"
    .parameter "confirm"

    .prologue
    const/4 v4, 0x0

    .line 2467
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2469
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_5c

    move-result v1

    if-nez v1, :cond_14

    move v1, v4

    .line 2479
    :goto_12
    monitor-exit p0

    return v1

    .line 2471
    :cond_14
    :try_start_14
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 2472
    iget-object v1, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v1}, Landroid/server/BluetoothEventLoop;->getPasskeyAgentRequestData()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2473
    .local v0, data:Ljava/lang/Integer;
    if-nez v0, :cond_53

    .line 2474
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPasskey("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") called but no native data available, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ignoring. Maybe the PasskeyAgent Request was cancelled by the remote device"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " or by bluez.\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 2477
    goto :goto_12

    .line 2479
    :cond_53
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Landroid/server/BluetoothService;->setPairingConfirmationNative(Ljava/lang/String;ZI)Z
    :try_end_5a
    .catchall {:try_start_14 .. :try_end_5a} :catchall_5c

    move-result v1

    goto :goto_12

    .line 2467
    .end local v0           #data:Ljava/lang/Integer;
    :catchall_5c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setPasskey(Ljava/lang/String;I)Z
    .registers 8
    .parameter "address"
    .parameter "passkey"

    .prologue
    const/4 v4, 0x0

    .line 2448
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2450
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_6b

    move-result v1

    if-nez v1, :cond_14

    move v1, v4

    .line 2463
    :goto_12
    monitor-exit p0

    return v1

    .line 2452
    :cond_14
    if-ltz p2, :cond_21

    const v1, 0xf423f

    if-gt p2, v1, :cond_21

    :try_start_1b
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_23

    :cond_21
    move v1, v4

    .line 2453
    goto :goto_12

    .line 2455
    :cond_23
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 2456
    iget-object v1, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v1}, Landroid/server/BluetoothEventLoop;->getPasskeyAgentRequestData()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2457
    .local v0, data:Ljava/lang/Integer;
    if-nez v0, :cond_62

    .line 2458
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPasskey("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") called but no native data available, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ignoring. Maybe the PasskeyAgent Request was cancelled by the remote device"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " or by bluez.\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 2461
    goto :goto_12

    .line 2463
    :cond_62
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Landroid/server/BluetoothService;->setPasskeyNative(Ljava/lang/String;II)Z
    :try_end_69
    .catchall {:try_start_1b .. :try_end_69} :catchall_6b

    move-result v1

    goto :goto_12

    .line 2448
    .end local v0           #data:Ljava/lang/Integer;
    :catchall_6b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setPin(Ljava/lang/String;[B)Z
    .registers 10
    .parameter "address"
    .parameter "pin"

    .prologue
    const/4 v6, 0x0

    const-string v3, "BluetoothService"

    .line 2420
    monitor-enter p0

    :try_start_4
    iget-object v3, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    const-string v5, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2422
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_82

    move-result v3

    if-nez v3, :cond_16

    move v3, v6

    .line 2444
    :goto_14
    monitor-exit p0

    return v3

    .line 2424
    :cond_16
    if-eqz p2, :cond_26

    :try_start_18
    array-length v3, p2

    if-lez v3, :cond_26

    array-length v3, p2

    const/16 v4, 0x10

    if-gt v3, v4, :cond_26

    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_28

    :cond_26
    move v3, v6

    .line 2426
    goto :goto_14

    .line 2428
    :cond_28
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 2429
    iget-object v3, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v3}, Landroid/server/BluetoothEventLoop;->getPasskeyAgentRequestData()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2430
    .local v0, data:Ljava/lang/Integer;
    if-nez v0, :cond_67

    .line 2431
    const-string v3, "BluetoothService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPin("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") called but no native data available, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ignoring. Maybe the PasskeyAgent Request was cancelled by the remote device"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " or by bluez.\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catchall {:try_start_18 .. :try_end_65} :catchall_82

    move v3, v6

    .line 2434
    goto :goto_14

    .line 2439
    :cond_67
    :try_start_67
    new-instance v1, Ljava/lang/String;

    const-string v3, "UTF8"

    invoke-direct {v1, p2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_6e
    .catchall {:try_start_67 .. :try_end_6e} :catchall_82
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_67 .. :try_end_6e} :catch_77

    .line 2444
    .local v1, pinString:Ljava/lang/String;
    :try_start_6e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, p1, v1, v3}, Landroid/server/BluetoothService;->setPinNative(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    goto :goto_14

    .line 2440
    .end local v1           #pinString:Ljava/lang/String;
    :catch_77
    move-exception v3

    move-object v2, v3

    .line 2441
    .local v2, uee:Ljava/io/UnsupportedEncodingException;
    const-string v3, "BluetoothService"

    const-string v4, "UTF8 not supported?!?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_80
    .catchall {:try_start_6e .. :try_end_80} :catchall_82

    move v3, v6

    .line 2442
    goto :goto_14

    .line 2420
    .end local v0           #data:Ljava/lang/Integer;
    .end local v2           #uee:Ljava/io/UnsupportedEncodingException;
    :catchall_82
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method declared-synchronized setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1602
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapterProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 1603
    monitor-exit p0

    return-void

    .line 1602
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "address"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 2181
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceProperties:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2182
    .local v0, propVal:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_15

    .line 2183
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2184
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceProperties:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_2f

    .line 2188
    :goto_13
    monitor-exit p0

    return-void

    .line 2186
    :cond_15
    :try_start_15
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRemoteDeviceProperty for a device not in cache:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_15 .. :try_end_2e} :catchall_2f

    goto :goto_13

    .line 2181
    .end local v0           #propVal:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_2f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setRemoteOutOfBandData(Ljava/lang/String;)Z
    .registers 10
    .parameter "address"

    .prologue
    const/4 v7, 0x0

    .line 2483
    monitor-enter p0

    :try_start_2
    iget-object v4, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH_ADMIN"

    const-string v6, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2485
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_77

    move-result v4

    if-nez v4, :cond_14

    move v4, v7

    .line 2505
    :goto_12
    monitor-exit p0

    return v4

    .line 2486
    :cond_14
    :try_start_14
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 2487
    iget-object v4, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v4}, Landroid/server/BluetoothEventLoop;->getPasskeyAgentRequestData()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2488
    .local v0, data:Ljava/lang/Integer;
    if-nez v0, :cond_53

    .line 2489
    const-string v4, "BluetoothService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setRemoteOobData("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") called but no native data available, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ignoring. Maybe the PasskeyAgent Request was cancelled by the remote device"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " or by bluez.\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v7

    .line 2492
    goto :goto_12

    .line 2495
    :cond_53
    iget-object v4, p0, Landroid/server/BluetoothService;->mDeviceOobData:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 2497
    .local v3, val:Landroid/util/Pair;,"Landroid/util/Pair<[B[B>;"
    if-nez v3, :cond_6e

    .line 2499
    const/16 v4, 0x10

    new-array v1, v4, [B

    .line 2500
    .local v1, hash:[B
    const/16 v4, 0x10

    new-array v2, v4, [B

    .line 2505
    .local v2, randomizer:[B
    :goto_65
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, p1, v1, v2, v4}, Landroid/server/BluetoothService;->setRemoteOutOfBandDataNative(Ljava/lang/String;[B[BI)Z

    move-result v4

    goto :goto_12

    .line 2502
    .end local v1           #hash:[B
    .end local v2           #randomizer:[B
    :cond_6e
    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [B

    .line 2503
    .restart local v1       #hash:[B
    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [B
    :try_end_76
    .catchall {:try_start_14 .. :try_end_76} :catchall_77

    .restart local v2       #randomizer:[B
    goto :goto_65

    .line 2483
    .end local v0           #data:Ljava/lang/Integer;
    .end local v1           #hash:[B
    .end local v2           #randomizer:[B
    .end local v3           #val:Landroid/util/Pair;,"Landroid/util/Pair<[B[B>;"
    :catchall_77
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized setScanMode(II)Z
    .registers 6
    .parameter "mode"
    .parameter "duration"

    .prologue
    .line 1658
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const-string v2, "Need WRITE_SECURE_SETTINGS permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothService;->_setScanMode(II)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    move-result v0

    monitor-exit p0

    return v0

    .line 1658
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setServiceTrust(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 8
    .parameter "address"
    .parameter "service"
    .parameter "value"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2249
    monitor-enter p0

    :try_start_3
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 2250
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_2b

    move v0, v3

    .line 2259
    :goto_13
    monitor-exit p0

    return v0

    .line 2255
    :cond_15
    :try_start_15
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v0

    if-nez v0, :cond_1d

    move v0, v3

    goto :goto_13

    .line 2257
    :cond_1d
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_29

    move v1, v2

    :goto_24
    invoke-direct {p0, v0, p2, v1}, Landroid/server/BluetoothService;->setServiceTrustNative(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_2b

    move v0, v2

    .line 2259
    goto :goto_13

    :cond_29
    move v1, v3

    .line 2257
    goto :goto_24

    .line 2249
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTrust(Ljava/lang/String;Z)Z
    .registers 7
    .parameter "address"
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 2196
    monitor-enter p0

    :try_start_2
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 2197
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_2c

    move v0, v3

    .line 2204
    :goto_12
    monitor-exit p0

    return v0

    .line 2202
    :cond_14
    :try_start_14
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v0

    if-nez v0, :cond_1c

    move v0, v3

    goto :goto_12

    .line 2204
    :cond_1c
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Trusted"

    if-eqz p2, :cond_2a

    const/4 v2, 0x1

    :goto_25
    invoke-direct {p0, v0, v1, v2}, Landroid/server/BluetoothService;->setDevicePropertyBooleanNative(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_28
    .catchall {:try_start_14 .. :try_end_28} :catchall_2c

    move-result v0

    goto :goto_12

    :cond_2a
    move v2, v3

    goto :goto_25

    .line 2196
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startDiscovery()Z
    .registers 4

    .prologue
    .line 1892
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1894
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    .line 1896
    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    :try_start_13
    invoke-direct {p0}, Landroid/server/BluetoothService;->startDiscoveryNative()Z
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result v0

    goto :goto_11

    .line 1892
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startDiscoveryByCod(I)Z
    .registers 5
    .parameter "cod"

    .prologue
    .line 1902
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1904
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_31

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    .line 1908
    :goto_11
    monitor-exit p0

    return v0

    .line 1906
    :cond_13
    :try_start_13
    const-string v0, "BluetoothService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDiscoveryByCod : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->startDiscoveryByCodNative(I)Z
    :try_end_2f
    .catchall {:try_start_13 .. :try_end_2f} :catchall_31

    move-result v0

    goto :goto_11

    .line 1902
    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method updateDeviceServiceChannelCache(Ljava/lang/String;)V
    .registers 21
    .parameter "address"

    .prologue
    .line 2530
    invoke-virtual/range {p0 .. p1}, Landroid/server/BluetoothService;->getRemoteUuids(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v8

    .line 2534
    .local v8, deviceUuids:[Landroid/os/ParcelUuid;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "updateDeviceServiceChannelCache("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 2536
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2538
    .local v4, applicationUuids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    monitor-enter p0

    .line 2539
    :try_start_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_39
    :goto_39
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_63

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/server/BluetoothService$RemoteService;

    .line 2540
    .local v13, service:Landroid/server/BluetoothService$RemoteService;
    move-object v0, v13

    iget-object v0, v0, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_39

    .line 2541
    move-object v0, v13

    iget-object v0, v0, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    move-object/from16 v16, v0

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 2544
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v13           #service:Landroid/server/BluetoothService$RemoteService;
    :catchall_60
    move-exception v16

    monitor-exit p0
    :try_end_62
    .catchall {:try_start_2b .. :try_end_62} :catchall_60

    throw v16

    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_63
    :try_start_63
    monitor-exit p0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_60

    .line 2546
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 2549
    .local v15, value:Ljava/util/Map;,"Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/lang/Integer;>;"
    sget-object v5, Landroid/server/BluetoothService;->RFCOMM_UUIDS:[Landroid/os/ParcelUuid;

    .local v5, arr$:[Landroid/os/ParcelUuid;
    array-length v12, v5

    .local v12, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_6d
    if-ge v10, v12, :cond_c1

    aget-object v14, v5, v10

    .line 2550
    .local v14, uuid:Landroid/os/ParcelUuid;
    invoke-static {v8, v14}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v16

    if-eqz v16, :cond_be

    .line 2551
    invoke-virtual/range {p0 .. p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v14}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Landroid/server/BluetoothService;->getDeviceServiceChannelNative(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    .line 2553
    .local v7, channel:I
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "\tuuid(system): "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 2554
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object v0, v15

    move-object v1, v14

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2549
    .end local v7           #channel:I
    :cond_be
    add-int/lit8 v10, v10, 0x1

    goto :goto_6d

    .line 2558
    .end local v14           #uuid:Landroid/os/ParcelUuid;
    :cond_c1
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_c5
    :goto_c5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_11f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/ParcelUuid;

    .line 2559
    .restart local v14       #uuid:Landroid/os/ParcelUuid;
    invoke-static {v8, v14}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v16

    if-eqz v16, :cond_c5

    .line 2560
    invoke-virtual/range {p0 .. p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v14}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Landroid/server/BluetoothService;->getDeviceServiceChannelNative(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    .line 2562
    .restart local v7       #channel:I
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "\tuuid(application): "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 2563
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object v0, v15

    move-object v1, v14

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c5

    .line 2567
    .end local v7           #channel:I
    .end local v14           #uuid:Landroid/os/ParcelUuid;
    :cond_11f
    monitor-enter p0

    .line 2569
    :try_start_120
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 2570
    .end local v4           #applicationUuids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    .local v11, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    :cond_12e
    :goto_12e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1bc

    .line 2571
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/server/BluetoothService$RemoteService;

    .line 2572
    .restart local v13       #service:Landroid/server/BluetoothService$RemoteService;
    move-object v0, v13

    iget-object v0, v0, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_12e

    .line 2573
    const/4 v7, -0x1

    .line 2574
    .restart local v7       #channel:I
    move-object v0, v13

    iget-object v0, v0, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    if-eqz v16, :cond_164

    .line 2575
    move-object v0, v13

    iget-object v0, v0, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 2577
    :cond_164
    const/16 v16, -0x1

    move v0, v7

    move/from16 v1, v16

    if-eq v0, v1, :cond_12e

    .line 2578
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Making callback for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v13

    iget-object v0, v0, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " with result "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 2580
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/IBluetoothCallback;
    :try_end_1a2
    .catchall {:try_start_120 .. :try_end_1a2} :catchall_1ab

    .line 2581
    .local v6, callback:Landroid/bluetooth/IBluetoothCallback;
    if-eqz v6, :cond_1a7

    .line 2583
    :try_start_1a4
    invoke-interface {v6, v7}, Landroid/bluetooth/IBluetoothCallback;->onRfcommChannelFound(I)V
    :try_end_1a7
    .catchall {:try_start_1a4 .. :try_end_1a7} :catchall_1ab
    .catch Landroid/os/RemoteException; {:try_start_1a4 .. :try_end_1a7} :catch_1ae

    .line 2587
    :cond_1a7
    :goto_1a7
    :try_start_1a7
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    goto :goto_12e

    .line 2594
    .end local v6           #callback:Landroid/bluetooth/IBluetoothCallback;
    .end local v7           #channel:I
    .end local v11           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    .end local v13           #service:Landroid/server/BluetoothService$RemoteService;
    :catchall_1ab
    move-exception v16

    monitor-exit p0
    :try_end_1ad
    .catchall {:try_start_1a7 .. :try_end_1ad} :catchall_1ab

    throw v16

    .line 2584
    .restart local v6       #callback:Landroid/bluetooth/IBluetoothCallback;
    .restart local v7       #channel:I
    .restart local v11       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    .restart local v13       #service:Landroid/server/BluetoothService$RemoteService;
    :catch_1ae
    move-exception v9

    .local v9, e:Landroid/os/RemoteException;
    :try_start_1af
    const-string v16, "BluetoothService"

    const-string v17, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a7

    .line 2593
    .end local v6           #callback:Landroid/bluetooth/IBluetoothCallback;
    .end local v7           #channel:I
    .end local v9           #e:Landroid/os/RemoteException;
    .end local v13           #service:Landroid/server/BluetoothService$RemoteService;
    :cond_1bc
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mDeviceServiceChannelCache:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2594
    monitor-exit p0
    :try_end_1cb
    .catchall {:try_start_1af .. :try_end_1cb} :catchall_1ab

    .line 2595
    return-void
.end method

.method declared-synchronized updateRemoteDevicePropertiesCache(Ljava/lang/String;)Z
    .registers 4
    .parameter "address"

    .prologue
    .line 2127
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getRemoteDeviceProperties(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2128
    .local v0, propValues:[Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 2129
    invoke-virtual {p0, p1, v0}, Landroid/server/BluetoothService;->addRemoteDeviceProperties(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_f

    .line 2130
    const/4 v1, 0x1

    .line 2132
    :goto_b
    monitor-exit p0

    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_b

    .line 2127
    .end local v0           #propValues:[Ljava/lang/String;
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public updateRemoteName(Ljava/lang/String;)V
    .registers 2
    .parameter "address"

    .prologue
    .line 3181
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->updateRemoteNameNative(Ljava/lang/String;)V

    .line 3182
    return-void
.end method

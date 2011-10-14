.class public Lcom/android/systemui/statusbar/policy/StatusBarPolicy;
.super Ljava/lang/Object;
.source "StatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/StatusBarPolicy$StatusBarHandler;
    }
.end annotation


# static fields
.field private static final sDataNetType_1x:[[I

.field private static final sDataNetType_3g:[[I

.field private static final sDataNetType_4g:[[I

.field private static final sDataNetType_e:[[I

.field private static final sDataNetType_g:[[I

.field private static final sDataNetType_h:[[I

.field private static final sDataNetType_h_plus:[[I

.field private static final sDataNetType_lte:[[I

.field private static final sRoamingIndicatorImages_cdma:[I

.field private static final sSignalImages:[[I

.field private static final sSignalImages_r:[[I

.field private static final sWifiSignalImages:[[I

.field private static final sWimaxSignalImages:[[I


# instance fields
.field private mBatteryFirst:Z

.field private mBatteryHealth:I

.field private mBatteryIntent:Landroid/app/PendingIntent;

.field private mBatteryLevel:I

.field private mBatteryLevelTextView:Landroid/widget/TextView;

.field private mBatteryPlugged:Z

.field private mBatteryPluggedType:I

.field private mBatteryShowLowOnEndCall:Z

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryStatus:I

.field private mBatteryView:Landroid/view/View;

.field private mBatteryViewSequence:I

.field private mBluetoothA2dpConnected:Z

.field private mBluetoothEnabled:Z

.field private mBluetoothHeadsetState:I

.field private mBluetoothHidConnected:Z

.field private mBluetoothPbapState:I

.field private final mContext:Landroid/content/Context;

.field mDataActivity:I

.field private mDataIconList:[I

.field private mDataIconVisible:Z

.field mDataState:I

.field private mFocusToneGenerator:Landroid/media/ToneGenerator;

.field private final mHandler:Landroid/os/Handler;

.field private mHspaDataDistinguishable:Z

.field private mInetCondition:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsFullCharged:Z

.field private mIsNotDisCharged:Z

.field private mIsWifiConnected:Z

.field private mIsWimaxConnected:Z

.field private mIsWimaxEnabled:Z

.field private mLastWifiSignalLevel:I

.field private mLowBatteryDialog:Landroid/app/AlertDialog;

.field private mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mMuteVisible:Z

.field private mMyContext:Landroid/content/Context;

.field private mNotDisChargeDialog:Landroid/app/AlertDialog;

.field private mNotDisChargeListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mNotDisChargeTextView:Landroid/widget/TextView;

.field private mPhone:Landroid/telephony/TelephonyManager;

.field private mPhoneSignalIconId:I

.field mPhoneState:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPowerSaveListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mPowerSaveModeDialog:Landroid/app/AlertDialog;

.field private mPowersaveTextview:Landroid/widget/TextView;

.field private final mService:Landroid/app/StatusBarManager;

.field mServiceState:Landroid/telephony/ServiceState;

.field mSignalStrength:Landroid/telephony/SignalStrength;

.field mSimState:Lcom/android/internal/telephony/IccCard$State;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mVolumeVisible:Z

.field private mWL:Landroid/os/PowerManager$WakeLock;

.field private mWimaxSignal:I

.field private mWimaxState:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 186
    new-array v0, v5, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sSignalImages:[[I

    .line 200
    new-array v0, v5, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sSignalImages_r:[[I

    .line 214
    const/16 v0, 0xf0

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sRoamingIndicatorImages_cdma:[I

    .line 473
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_g:[[I

    .line 483
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_3g:[[I

    .line 493
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_e:[[I

    .line 504
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_h:[[I

    .line 515
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_h_plus:[[I

    .line 529
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_f

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_10

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_1x:[[I

    .line 542
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_11

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_12

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_4g:[[I

    .line 554
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_13

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_14

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_lte:[[I

    .line 593
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_15

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_16

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWifiSignalImages:[[I

    .line 610
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_17

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_18

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWimaxSignalImages:[[I

    return-void

    .line 186
    nop

    :array_0
    .array-data 0x4
        0x90t 0x0t 0x2t 0x7ft
        0x92t 0x0t 0x2t 0x7ft
        0x94t 0x0t 0x2t 0x7ft
        0x96t 0x0t 0x2t 0x7ft
        0x98t 0x0t 0x2t 0x7ft
        0x9at 0x0t 0x2t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x91t 0x0t 0x2t 0x7ft
        0x93t 0x0t 0x2t 0x7ft
        0x95t 0x0t 0x2t 0x7ft
        0x97t 0x0t 0x2t 0x7ft
        0x99t 0x0t 0x2t 0x7ft
        0x9bt 0x0t 0x2t 0x7ft
    .end array-data

    .line 200
    :array_2
    .array-data 0x4
        0x7dt 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x81t 0x0t 0x2t 0x7ft
        0x83t 0x0t 0x2t 0x7ft
        0x85t 0x0t 0x2t 0x7ft
        0x87t 0x0t 0x2t 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0x7et 0x0t 0x2t 0x7ft
        0x80t 0x0t 0x2t 0x7ft
        0x82t 0x0t 0x2t 0x7ft
        0x84t 0x0t 0x2t 0x7ft
        0x86t 0x0t 0x2t 0x7ft
        0x88t 0x0t 0x2t 0x7ft
    .end array-data

    .line 214
    :array_4
    .array-data 0x4
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
    .end array-data

    .line 473
    :array_5
    .array-data 0x4
        0x33t 0x0t 0x2t 0x7ft
        0x5bt 0x0t 0x2t 0x7ft
        0x6ct 0x0t 0x2t 0x7ft
        0x64t 0x0t 0x2t 0x7ft
    .end array-data

    :array_6
    .array-data 0x4
        0x3bt 0x0t 0x2t 0x7ft
        0x43t 0x0t 0x2t 0x7ft
        0x53t 0x0t 0x2t 0x7ft
        0x4bt 0x0t 0x2t 0x7ft
    .end array-data

    .line 483
    :array_7
    .array-data 0x4
        0x30t 0x0t 0x2t 0x7ft
        0x58t 0x0t 0x2t 0x7ft
        0x69t 0x0t 0x2t 0x7ft
        0x61t 0x0t 0x2t 0x7ft
    .end array-data

    :array_8
    .array-data 0x4
        0x38t 0x0t 0x2t 0x7ft
        0x40t 0x0t 0x2t 0x7ft
        0x50t 0x0t 0x2t 0x7ft
        0x48t 0x0t 0x2t 0x7ft
    .end array-data

    .line 493
    :array_9
    .array-data 0x4
        0x32t 0x0t 0x2t 0x7ft
        0x5at 0x0t 0x2t 0x7ft
        0x6bt 0x0t 0x2t 0x7ft
        0x63t 0x0t 0x2t 0x7ft
    .end array-data

    :array_a
    .array-data 0x4
        0x3at 0x0t 0x2t 0x7ft
        0x42t 0x0t 0x2t 0x7ft
        0x52t 0x0t 0x2t 0x7ft
        0x4at 0x0t 0x2t 0x7ft
    .end array-data

    .line 504
    :array_b
    .array-data 0x4
        0x34t 0x0t 0x2t 0x7ft
        0x5ct 0x0t 0x2t 0x7ft
        0x6dt 0x0t 0x2t 0x7ft
        0x65t 0x0t 0x2t 0x7ft
    .end array-data

    :array_c
    .array-data 0x4
        0x3ct 0x0t 0x2t 0x7ft
        0x44t 0x0t 0x2t 0x7ft
        0x54t 0x0t 0x2t 0x7ft
        0x4ct 0x0t 0x2t 0x7ft
    .end array-data

    .line 515
    :array_d
    .array-data 0x4
        0x35t 0x0t 0x2t 0x7ft
        0x5dt 0x0t 0x2t 0x7ft
        0x6et 0x0t 0x2t 0x7ft
        0x66t 0x0t 0x2t 0x7ft
    .end array-data

    :array_e
    .array-data 0x4
        0x3dt 0x0t 0x2t 0x7ft
        0x45t 0x0t 0x2t 0x7ft
        0x55t 0x0t 0x2t 0x7ft
        0x4dt 0x0t 0x2t 0x7ft
    .end array-data

    .line 529
    :array_f
    .array-data 0x4
        0x2ft 0x0t 0x2t 0x7ft
        0x57t 0x0t 0x2t 0x7ft
        0x68t 0x0t 0x2t 0x7ft
        0x60t 0x0t 0x2t 0x7ft
    .end array-data

    :array_10
    .array-data 0x4
        0x37t 0x0t 0x2t 0x7ft
        0x3ft 0x0t 0x2t 0x7ft
        0x4ft 0x0t 0x2t 0x7ft
        0x47t 0x0t 0x2t 0x7ft
    .end array-data

    .line 542
    :array_11
    .array-data 0x4
        0x31t 0x0t 0x2t 0x7ft
        0x59t 0x0t 0x2t 0x7ft
        0x6at 0x0t 0x2t 0x7ft
        0x62t 0x0t 0x2t 0x7ft
    .end array-data

    :array_12
    .array-data 0x4
        0x39t 0x0t 0x2t 0x7ft
        0x41t 0x0t 0x2t 0x7ft
        0x51t 0x0t 0x2t 0x7ft
        0x49t 0x0t 0x2t 0x7ft
    .end array-data

    .line 554
    :array_13
    .array-data 0x4
        0x36t 0x0t 0x2t 0x7ft
        0x5et 0x0t 0x2t 0x7ft
        0x6ft 0x0t 0x2t 0x7ft
        0x67t 0x0t 0x2t 0x7ft
    .end array-data

    :array_14
    .array-data 0x4
        0x3et 0x0t 0x2t 0x7ft
        0x46t 0x0t 0x2t 0x7ft
        0x56t 0x0t 0x2t 0x7ft
        0x4et 0x0t 0x2t 0x7ft
    .end array-data

    .line 593
    :array_15
    .array-data 0x4
        0xa0t 0x0t 0x2t 0x7ft
        0xa2t 0x0t 0x2t 0x7ft
        0xa4t 0x0t 0x2t 0x7ft
        0xa6t 0x0t 0x2t 0x7ft
    .end array-data

    :array_16
    .array-data 0x4
        0xa1t 0x0t 0x2t 0x7ft
        0xa3t 0x0t 0x2t 0x7ft
        0xa5t 0x0t 0x2t 0x7ft
        0xa7t 0x0t 0x2t 0x7ft
    .end array-data

    .line 610
    :array_17
    .array-data 0x4
        0x70t 0x0t 0x2t 0x7ft
        0x72t 0x0t 0x2t 0x7ft
        0x74t 0x0t 0x2t 0x7ft
        0x76t 0x0t 0x2t 0x7ft
    .end array-data

    :array_18
    .array-data 0x4
        0x71t 0x0t 0x2t 0x7ft
        0x73t 0x0t 0x2t 0x7ft
        0x75t 0x0t 0x2t 0x7ft
        0x77t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string v7, "cdma_eri"

    const-string v6, "bluetooth"

    const-string v3, "alarm_clock"

    .line 723
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$StatusBarHandler;

    invoke-direct {v0, p0, v5}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$StatusBarHandler;-><init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryFirst:Z

    .line 147
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    .line 471
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_g:[[I

    aget-object v0, v0, v4

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    .line 569
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 570
    iput v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneState:I

    .line 571
    iput v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataState:I

    .line 572
    iput v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataActivity:I

    .line 606
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWifiSignalLevel:I

    .line 607
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWifiConnected:Z

    .line 623
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWimaxConnected:Z

    .line 624
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWimaxEnabled:Z

    .line 625
    iput v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWimaxSignal:I

    .line 626
    iput v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWimaxState:I

    .line 629
    iput v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    .line 635
    new-instance v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;-><init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1243
    new-instance v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$3;-><init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 1252
    new-instance v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;-><init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mNotDisChargeListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 1350
    new-instance v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$5;-><init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 2289
    new-instance v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$6;-><init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPowerSaveListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 724
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    .line 725
    const-string v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    .line 726
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 727
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 730
    const-string v0, "storage"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 731
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    new-instance v1, Lcom/android/systemui/usb/StorageNotification;

    invoke-direct {v1, p1}, Lcom/android/systemui/usb/StorageNotification;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 735
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "battery"

    const v2, 0x10802e0

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 738
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    .line 739
    const v0, 0x7f02009d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneSignalIconId:I

    .line 740
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "phone_signal"

    iget v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneSignalIconId:I

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 743
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x1e1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 752
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "data_connection"

    const v2, 0x7f020033

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 753
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "data_connection"

    invoke-virtual {v0, v1, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 756
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wifi"

    sget-object v2, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWifiSignalImages:[[I

    aget-object v2, v2, v4

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 757
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wifi"

    invoke-virtual {v0, v1, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 762
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10d0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 764
    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    const v2, 0x7f020078

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 766
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    invoke-virtual {v0, v1, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "tty"

    const v2, 0x7f02009e

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 771
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "tty"

    invoke-virtual {v0, v1, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 774
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "cdma_eri"

    const v1, 0x7f02008c

    invoke-virtual {v0, v7, v1, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 775
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "cdma_eri"

    invoke-virtual {v0, v7, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 778
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "bluetooth"

    const v1, 0x7f02002d

    invoke-virtual {v0, v6, v1, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 779
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 780
    if-eqz v0, :cond_1

    .line 781
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothEnabled:Z

    .line 785
    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothA2dpConnected:Z

    .line 786
    iput v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothHeadsetState:I

    .line 787
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothHidConnected:Z

    .line 788
    iput v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothPbapState:I

    .line 789
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "bluetooth"

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothEnabled:Z

    invoke-virtual {v0, v6, v1}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 792
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gps"

    const v2, 0x7f02007b

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 793
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 796
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "alarm_clock"

    const v1, 0x7f02002a

    invoke-virtual {v0, v3, v1, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 797
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "alarm_clock"

    invoke-virtual {v0, v3, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 800
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "sync_active"

    const v2, 0x10802bd

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 801
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "sync_failing"

    const v2, 0x10802be

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 802
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "sync_active"

    invoke-virtual {v0, v1, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 803
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "sync_failing"

    invoke-virtual {v0, v1, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 806
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "volume"

    const v2, 0x7f02008b

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 807
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "mute"

    const v2, 0x7f020089

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 808
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "volume"

    invoke-virtual {v0, v1, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 809
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "mute"

    invoke-virtual {v0, v1, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 810
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateVolume()V

    .line 812
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 815
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 816
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 817
    const-string v1, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 818
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 819
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 820
    const-string v1, "android.intent.action.ALARM_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 821
    const-string v1, "android.intent.action.SYNC_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 822
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 823
    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 824
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 825
    const-string v1, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 826
    const-string v1, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 827
    const-string v1, "com.broadcom.bt.service.hid.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 828
    const-string v1, "android.bluetooth.pbap.intent.action.PBAP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 829
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 830
    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 831
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 832
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 833
    const-string v1, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 834
    const-string v1, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 835
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 836
    const-string v1, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 837
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 838
    const-string v1, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 839
    const-string v1, "android.net.wimax.WIMAX_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 840
    const-string v1, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 841
    const-string v1, "android.net.wimax.WIMAX_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 843
    const-string v1, "com.sec.android.service.statusbar.COLLAPSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 845
    const-string v1, "com.android.systemui.statusbar.SHOW_NOT_DIS_CHARGED_POPUP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 847
    const-string v1, "android.settings.POWERSAVING_POPUP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 848
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 852
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHspaDataDistinguishable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 857
    :goto_1
    return-void

    .line 783
    :cond_1
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothEnabled:Z

    goto/16 :goto_0

    .line 854
    :catch_0
    move-exception v0

    .line 855
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHspaDataDistinguishable:Z

    goto :goto_1
.end method

.method private RunPowerSaveMode()V
    .locals 2

    .prologue
    .line 2333
    const-string v0, "StatusBarPolicy"

    const-string v1, "RunPowerSaveMode()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2334
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPowerSaveModeDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 2335
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->showDialog()V

    .line 2337
    :cond_0
    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateGps(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mMyContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateVolume()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateSimState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateTTY(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateConnectivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateWiMAX(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/app/StatusBarManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsNotDisCharged:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->showNotDisChargePopup(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->RunPowerSaveMode()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateBattery(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mNotDisChargeDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mNotDisChargeTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWL:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWL:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateSignalStrength()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateCdmaRoamingIcon(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateAlarm(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateDataIcon()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateCallState(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->isCdma()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateDataNetType(I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryViewSequence:I

    return v0
.end method

.method static synthetic access$3500(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->closeLastBatteryView()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/media/ToneGenerator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    return-object p1
.end method

.method static synthetic access$3702(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPowerSaveModeDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->doPowerSave()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateSyncState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->onBatteryLow(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateLowBatteryWarning(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->onBatteryOkay(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateBluetooth(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateWifi(Landroid/content/Intent;)V

    return-void
.end method

.method private addFullChargeNotification()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2268
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v1, 0x7f080025

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2269
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v2, 0x7f080026

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2271
    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f02002c

    const-wide/16 v4, 0x0

    invoke-direct {v2, v3, v1, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 2272
    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 2273
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-static {v4, v6, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2274
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2276
    const/high16 v1, 0x701

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 2277
    const-string v0, "system/media/audio/ui/TW_Battery_caution.ogg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->playTone(Landroid/net/Uri;)V

    .line 2279
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->turnOnScreenWithForce()V

    .line 2280
    return-void
.end method

.method private closeLastBatteryView()V
    .locals 2

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1292
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 1293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryView:Landroid/view/View;

    .line 1295
    :cond_0
    return-void
.end method

.method private doPowerSave()V
    .locals 3

    .prologue
    .line 2296
    const-string v0, "StatusBarPolicy"

    const-string v1, "SEND_POWERSAVING_ACTION"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2297
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.ACTION_POWERSAVING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2298
    return-void
.end method

.method private getCdmaLevel()I
    .locals 5

    .prologue
    .line 1533
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 1534
    .local v0, cdmaDbm:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 1535
    .local v1, cdmaEcio:I
    const/4 v2, 0x0

    .line 1536
    .local v2, levelDbm:I
    const/4 v3, 0x0

    .line 1538
    .local v3, levelEcio:I
    const/16 v4, -0x4b

    if-lt v0, v4, :cond_0

    const/4 v2, 0x4

    .line 1545
    :goto_0
    const/16 v4, -0x5a

    if-lt v1, v4, :cond_4

    const/4 v3, 0x4

    .line 1551
    :goto_1
    if-ge v2, v3, :cond_8

    move v4, v2

    :goto_2
    return v4

    .line 1539
    :cond_0
    const/16 v4, -0x55

    if-lt v0, v4, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    .line 1540
    :cond_1
    const/16 v4, -0x5f

    if-lt v0, v4, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    .line 1541
    :cond_2
    const/16 v4, -0x64

    if-lt v0, v4, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    .line 1542
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 1546
    :cond_4
    const/16 v4, -0x6e

    if-lt v1, v4, :cond_5

    const/4 v3, 0x3

    goto :goto_1

    .line 1547
    :cond_5
    const/16 v4, -0x82

    if-lt v1, v4, :cond_6

    const/4 v3, 0x2

    goto :goto_1

    .line 1548
    :cond_6
    const/16 v4, -0x96

    if-lt v1, v4, :cond_7

    const/4 v3, 0x1

    goto :goto_1

    .line 1549
    :cond_7
    const/4 v3, 0x0

    goto :goto_1

    :cond_8
    move v4, v3

    .line 1551
    goto :goto_2
.end method

.method private getEvdoLevel()I
    .locals 5

    .prologue
    .line 1555
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 1556
    .local v0, evdoDbm:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 1557
    .local v1, evdoSnr:I
    const/4 v2, 0x0

    .line 1558
    .local v2, levelEvdoDbm:I
    const/4 v3, 0x0

    .line 1560
    .local v3, levelEvdoSnr:I
    const/16 v4, -0x41

    if-lt v0, v4, :cond_0

    const/4 v2, 0x4

    .line 1566
    :goto_0
    const/4 v4, 0x7

    if-lt v1, v4, :cond_4

    const/4 v3, 0x4

    .line 1572
    :goto_1
    if-ge v2, v3, :cond_8

    move v4, v2

    :goto_2
    return v4

    .line 1561
    :cond_0
    const/16 v4, -0x4b

    if-lt v0, v4, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    .line 1562
    :cond_1
    const/16 v4, -0x5a

    if-lt v0, v4, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    .line 1563
    :cond_2
    const/16 v4, -0x69

    if-lt v0, v4, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    .line 1564
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 1567
    :cond_4
    const/4 v4, 0x5

    if-lt v1, v4, :cond_5

    const/4 v3, 0x3

    goto :goto_1

    .line 1568
    :cond_5
    const/4 v4, 0x3

    if-lt v1, v4, :cond_6

    const/4 v3, 0x2

    goto :goto_1

    .line 1569
    :cond_6
    const/4 v4, 0x1

    if-lt v1, v4, :cond_7

    const/4 v3, 0x1

    goto :goto_1

    .line 1570
    :cond_7
    const/4 v3, 0x0

    goto :goto_1

    :cond_8
    move v4, v3

    .line 1572
    goto :goto_2
.end method

.method private hasService()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1434
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    .line 1435
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1440
    :pswitch_0
    const/4 v0, 0x1

    .line 1443
    :goto_0
    return v0

    :pswitch_1
    move v0, v1

    .line 1438
    goto :goto_0

    :cond_0
    move v0, v1

    .line 1443
    goto :goto_0

    .line 1435
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isCdma()Z
    .locals 1

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEvdo()Z
    .locals 2

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onBatteryLow(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 994
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->showLowBatteryWarning()V

    .line 999
    return-void
.end method

.method private onBatteryOkay(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1018
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1019
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    .line 1021
    :cond_0
    return-void
.end method

.method private playTone(Landroid/net/Uri;)V
    .locals 5
    .parameter

    .prologue
    const-string v4, "StatusBarPolicy"

    .line 1189
    const-string v0, "StatusBarPolicy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playTone() - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1195
    if-eqz v0, :cond_0

    .line 1197
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 1199
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 1201
    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 1203
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1204
    iput-object p1, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1208
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1213
    :cond_0
    :goto_1
    return-void

    .line 1206
    :cond_1
    iget v2, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/app/Notification;->defaults:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1210
    :catch_0
    move-exception v0

    .line 1211
    const-string v1, "StatusBarPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playTone() - Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private removeFullChargeNotification()V
    .locals 2

    .prologue
    .line 2283
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 2285
    const/high16 v0, 0x701

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2286
    return-void
.end method

.method private showDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 2301
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v1, 0x7f080029

    new-array v2, v8, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "psm_battery_level"

    const/16 v7, 0x32

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2305
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v2, 0x7f030002

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2306
    const v0, 0x7f0a0004

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPowersaveTextview:Landroid/widget/TextView;

    .line 2307
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPowersaveTextview:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2309
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2310
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2311
    const v1, 0x7f080028

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2312
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2313
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2314
    const v1, 0x104000a

    new-instance v2, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$8;-><init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$7;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$7;-><init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2325
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2326
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPowerSaveListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2327
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 2328
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2329
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPowerSaveModeDialog:Landroid/app/AlertDialog;

    .line 2330
    return-void
.end method

.method private showLowBatteryWarning()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1035
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->closeLastBatteryView()V

    .line 1048
    iget v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryPluggedType:I

    if-ne v8, v10, :cond_1

    .line 1049
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v9, 0x7f08001e

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1055
    .local v4, levelText:Ljava/lang/CharSequence;
    :goto_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    if-eqz v8, :cond_2

    .line 1056
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1116
    :goto_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1117
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v8, "power_sounds_enabled"

    invoke-static {v1, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v10, :cond_0

    .line 1120
    const-string v8, "low_battery_sound"

    invoke-static {v1, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1122
    .local v5, soundPath:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 1123
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1124
    .local v6, soundUri:Landroid/net/Uri;
    if-eqz v6, :cond_0

    .line 1136
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->playTone(Landroid/net/Uri;)V

    .line 1142
    .end local v5           #soundPath:Ljava/lang/String;
    .end local v6           #soundUri:Landroid/net/Uri;
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->turnOnScreenWithForce()V

    .line 1143
    return-void

    .line 1051
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v4           #levelText:Ljava/lang/CharSequence;
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v9, 0x7f08001f

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #levelText:Ljava/lang/CharSequence;
    goto :goto_0

    .line 1058
    :cond_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v9, 0x7f030001

    invoke-static {v8, v9, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 1059
    .local v7, v:Landroid/view/View;
    const v8, 0x7f0a0002

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    .line 1061
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1063
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1064
    .local v0, b:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1072
    iget v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryLevel:I

    const/4 v9, 0x5

    if-le v8, v9, :cond_4

    .line 1073
    const v8, 0x7f08001c

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1078
    :goto_2
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1079
    const v8, 0x1080027

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1080
    const v8, 0x104000a

    invoke-virtual {v0, v8, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1082
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1083
    .local v3, intent:Landroid/content/Intent;
    const/high16 v8, 0x5880

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1087
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 1088
    const v8, 0x7f080008

    new-instance v9, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$2;

    invoke-direct {v9, p0, v3}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$2;-><init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1099
    :cond_3
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1100
    .local v2, d:Landroid/app/AlertDialog;
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1110
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d9

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 1112
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1113
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 1075
    .end local v2           #d:Landroid/app/AlertDialog;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_4
    const v8, 0x7f08001d

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2
.end method

.method private showNotDisChargePopup(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x6

    const-string v4, "StatusBarPolicy"

    .line 1147
    const-string v0, "StatusBarPolicy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showNotDisChargePopup() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1150
    const-string v1, "StatusBarPolicy"

    invoke-virtual {v0, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWL:Landroid/os/PowerManager$WakeLock;

    .line 1151
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWL:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1154
    iget v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryHealth:I

    if-ne v0, v2, :cond_1

    .line 1155
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v1, 0x7f080021

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1160
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mNotDisChargeTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1161
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mNotDisChargeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1181
    :goto_1
    if-nez p1, :cond_0

    .line 1182
    const-string v0, "system/media/audio/ui/TW_Battery_caution.ogg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->playTone(Landroid/net/Uri;)V

    .line 1185
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->turnOnScreenWithForce()V

    .line 1186
    return-void

    .line 1157
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v1, 0x7f080022

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 1163
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const/high16 v2, 0x7f03

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1164
    const/high16 v0, 0x7f0a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mNotDisChargeTextView:Landroid/widget/TextView;

    .line 1165
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mNotDisChargeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1167
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1168
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1169
    const v1, 0x7f080020

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1170
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1171
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1172
    const v1, 0x104000a

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1174
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1175
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mNotDisChargeListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1176
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1177
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1178
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mNotDisChargeDialog:Landroid/app/AlertDialog;

    goto :goto_1
.end method

.method private turnOnScreenWithForce()V
    .locals 5

    .prologue
    .line 2260
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 2262
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IPowerManager;->userActivityWithForce(JZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2265
    :goto_0
    return-void

    .line 2263
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private final updateAlarm(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 860
    const-string v1, "alarmSet"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 861
    .local v0, alarmSet:Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "alarm_clock"

    invoke-virtual {v1, v2, v0}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 862
    return-void
.end method

.method private final updateBattery(Landroid/content/Intent;)V
    .locals 13
    .parameter "intent"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 873
    const-string v5, "icon-small"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 874
    .local v0, id:I
    const-string v5, "level"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 875
    .local v1, level:I
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "battery"

    invoke-virtual {v5, v6, v0, v1}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 884
    const-string v5, "plugged"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 885
    .local v4, pluggedType:I
    iput v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryPluggedType:I

    .line 887
    if-eqz v4, :cond_4

    move v3, v9

    .line 890
    .local v3, plugged:Z
    :goto_0
    const-string v5, "level"

    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 899
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryPlugged:Z

    .line 901
    .local v2, oldPlugged:Z
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryPlugged:Z

    .line 902
    iput v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryLevel:I

    .line 904
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryFirst:Z

    if-eqz v5, :cond_0

    .line 905
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryFirst:Z

    .line 919
    :cond_0
    const-string v5, "status"

    invoke-virtual {p1, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryStatus:I

    .line 920
    const-string v5, "health"

    invoke-virtual {p1, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryHealth:I

    .line 921
    const-string v5, "StatusBarPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BAT. S:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " H:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryHealth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    iget v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryStatus:I

    if-ne v5, v11, :cond_5

    .line 924
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsNotDisCharged:Z

    if-eqz v5, :cond_2

    .line 925
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsNotDisCharged:Z

    .line 927
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mNotDisChargeDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_1

    .line 928
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mNotDisChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 931
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryIntent:Landroid/app/PendingIntent;

    if-eqz v5, :cond_2

    .line 932
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 933
    iput-object v12, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryIntent:Landroid/app/PendingIntent;

    .line 937
    :cond_2
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsFullCharged:Z

    if-eqz v5, :cond_3

    .line 938
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsFullCharged:Z

    .line 939
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->removeFullChargeNotification()V

    .line 983
    :cond_3
    :goto_1
    return-void

    .end local v2           #oldPlugged:Z
    .end local v3           #plugged:Z
    :cond_4
    move v3, v8

    .line 887
    goto :goto_0

    .line 942
    .restart local v2       #oldPlugged:Z
    .restart local v3       #plugged:Z
    :cond_5
    iget v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryStatus:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_a

    .line 943
    iget v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryHealth:I

    if-eq v5, v11, :cond_6

    iget v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryHealth:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_8

    .line 945
    :cond_6
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsNotDisCharged:Z

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mNotDisChargeDialog:Landroid/app/AlertDialog;

    if-nez v5, :cond_7

    .line 946
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsNotDisCharged:Z

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->showNotDisChargePopup(Z)V

    .line 948
    :cond_7
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsNotDisCharged:Z

    goto :goto_1

    .line 949
    :cond_8
    iget v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryHealth:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_3

    .line 950
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsNotDisCharged:Z

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mNotDisChargeDialog:Landroid/app/AlertDialog;

    if-nez v5, :cond_9

    .line 951
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsNotDisCharged:Z

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->showNotDisChargePopup(Z)V

    .line 953
    :cond_9
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsNotDisCharged:Z

    goto :goto_1

    .line 955
    :cond_a
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsNotDisCharged:Z

    if-eqz v5, :cond_c

    iget v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryHealth:I

    if-ne v5, v10, :cond_c

    .line 956
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsNotDisCharged:Z

    .line 958
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mNotDisChargeDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_b

    .line 959
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mNotDisChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 962
    :cond_b
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryIntent:Landroid/app/PendingIntent;

    if-eqz v5, :cond_3

    .line 963
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 964
    iput-object v12, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryIntent:Landroid/app/PendingIntent;

    goto :goto_1

    .line 969
    :cond_c
    iget v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryStatus:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_d

    .line 970
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsFullCharged:Z

    if-nez v5, :cond_3

    .line 971
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsFullCharged:Z

    .line 972
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->addFullChargeNotification()V

    goto :goto_1

    .line 977
    :cond_d
    iget v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryStatus:I

    if-ne v5, v10, :cond_3

    .line 978
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPowerSaveModeDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_3

    .line 979
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPowerSaveModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_1
.end method

.method private final updateBluetooth(Landroid/content/Intent;)V
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v6, "bluetooth"

    .line 1913
    const v0, 0x7f02002d

    .line 1914
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1915
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1916
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x8000

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1917
    const/16 v2, 0xc

    if-ne v1, v2, :cond_3

    move v1, v4

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothEnabled:Z

    .line 1942
    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothHidConnected:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothHeadsetState:I

    if-eq v1, v5, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothA2dpConnected:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothPbapState:I

    if-ne v1, v5, :cond_1

    .line 1944
    :cond_0
    const v0, 0x7f02002e

    .line 1956
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "bluetooth"

    invoke-virtual {v1, v6, v0, v3, v3}, Landroid/app/StatusBarManager;->setIconWithVisible(Ljava/lang/String;IIZ)V

    .line 1958
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "bluetooth"

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothEnabled:Z

    invoke-virtual {v0, v6, v1}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1959
    :cond_2
    return-void

    :cond_3
    move v1, v3

    .line 1917
    goto :goto_0

    .line 1918
    :cond_4
    const-string v2, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1919
    const-string v1, "android.bluetooth.headset.extra.STATE"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothHeadsetState:I

    goto :goto_1

    .line 1921
    :cond_5
    const-string v2, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1922
    new-instance v1, Landroid/bluetooth/BluetoothA2dp;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;)V

    .line 1923
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothA2dp;->getConnectedSinks()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-eqz v1, :cond_6

    .line 1924
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothA2dpConnected:Z

    goto :goto_1

    .line 1926
    :cond_6
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothA2dpConnected:Z

    goto :goto_1

    .line 1928
    :cond_7
    const-string v2, "com.broadcom.bt.service.hid.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1929
    new-instance v1, Lcom/broadcom/bt/service/hid/BluetoothHID;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/broadcom/bt/service/hid/BluetoothHID;-><init>(Landroid/content/Context;)V

    .line 1930
    invoke-virtual {v1}, Lcom/broadcom/bt/service/hid/BluetoothHID;->getConnectedDevices()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-eqz v1, :cond_8

    .line 1931
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothHidConnected:Z

    goto :goto_1

    .line 1933
    :cond_8
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothHidConnected:Z

    goto :goto_1

    .line 1935
    :cond_9
    const-string v2, "android.bluetooth.pbap.intent.action.PBAP_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1936
    const-string v1, "android.bluetooth.pbap.intent.PBAP_STATE"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothPbapState:I

    goto/16 :goto_1
.end method

.method private final updateCallState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1217
    iput p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneState:I

    .line 1223
    iget v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneState:I

    if-nez v0, :cond_2

    .line 1224
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    if-eqz v0, :cond_1

    .line 1225
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryPlugged:Z

    if-nez v0, :cond_0

    .line 1226
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->showLowBatteryWarning()V

    .line 1228
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    .line 1241
    :cond_1
    :goto_0
    return-void

    .line 1231
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 1232
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    .line 1236
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mNotDisChargeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1237
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mNotDisChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method

.method private final updateCdmaRoamingIcon(Landroid/telephony/ServiceState;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v3, "StatusBarPolicy"

    const-string v4, "cdma_eri"

    .line 2179
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hasService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2180
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "cdma_eri"

    invoke-virtual {v0, v4, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 2225
    :goto_0
    return-void

    .line 2184
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->isCdma()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2185
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "cdma_eri"

    invoke-virtual {v0, v4, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2189
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sRoamingIndicatorImages_cdma:[I

    .line 2190
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v1

    .line 2191
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v2

    .line 2193
    if-ne v1, v7, :cond_2

    .line 2194
    const-string v0, "StatusBarPolicy"

    const-string v0, "getCdmaEriIconIndex returned null, skipping ERI icon update"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2198
    :cond_2
    if-ne v2, v7, :cond_3

    .line 2199
    const-string v0, "StatusBarPolicy"

    const-string v0, "getCdmeEriIconMode returned null, skipping ERI icon update"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2203
    :cond_3
    if-ne v1, v6, :cond_4

    .line 2205
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "cdma_eri"

    invoke-virtual {v0, v4, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2209
    :cond_4
    packed-switch v2, :pswitch_data_0

    .line 2224
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "phone_signal"

    iget v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneSignalIconId:I

    invoke-virtual {v0, v1, v2, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_0

    .line 2211
    :pswitch_0
    array-length v2, v0

    if-lt v1, v2, :cond_5

    .line 2212
    const-string v0, "StatusBarPolicy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown iconIndex "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", skipping ERI icon update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2215
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "cdma_eri"

    aget v0, v0, v1

    invoke-virtual {v2, v4, v0, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 2216
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "cdma_eri"

    invoke-virtual {v0, v4, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    .line 2219
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "cdma_eri"

    const v1, 0x7f02008d

    invoke-virtual {v0, v4, v1, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 2220
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "cdma_eri"

    invoke-virtual {v0, v4, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    .line 2209
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateConnectivity(Landroid/content/Intent;)V
    .locals 8
    .parameter

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v7, "StatusBarPolicy"

    const-string v5, "wifi"

    .line 1298
    const-string v0, "networkInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    check-cast v0, Landroid/net/NetworkInfo;

    .line 1300
    const-string v1, "inetCondition"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1302
    const/16 v2, 0x32

    if-le v1, v2, :cond_0

    move v1, v4

    .line 1304
    :goto_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1348
    :goto_1
    return-void

    :cond_0
    move v1, v3

    .line 1302
    goto :goto_0

    .line 1306
    :sswitch_0
    const-string v2, "StatusBarPolicy"

    const-string v2, "updateConnectivity-TYPE_MOBILE"

    invoke-static {v7, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    iput v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    .line 1308
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateDataNetType(I)V

    .line 1309
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateDataIcon()V

    .line 1310
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateSignalStrength()V

    goto :goto_1

    .line 1313
    :sswitch_1
    const-string v2, "StatusBarPolicy"

    const-string v2, "updateConnectivity-TYPE_WIFI"

    invoke-static {v7, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    iput v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    .line 1315
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1316
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWifiConnected:Z

    .line 1318
    iget v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWifiSignalLevel:I

    if-ne v0, v6, :cond_1

    .line 1319
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWifiSignalImages:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    aget v0, v0, v3

    .line 1323
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "wifi"

    invoke-virtual {v1, v5, v0, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1325
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wifi"

    invoke-virtual {v0, v5, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1335
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateSignalStrength()V

    goto :goto_1

    .line 1321
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWifiSignalImages:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWifiSignalLevel:I

    aget v0, v0, v1

    goto :goto_2

    .line 1327
    :cond_2
    iput v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWifiSignalLevel:I

    .line 1328
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWifiConnected:Z

    .line 1329
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWifiSignalImages:[[I

    aget-object v0, v0, v3

    aget v0, v0, v3

    .line 1331
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "wifi"

    invoke-virtual {v1, v5, v0, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1333
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wifi"

    invoke-virtual {v0, v5, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_3

    .line 1338
    :sswitch_2
    iput v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    .line 1339
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1340
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWimaxConnected:Z

    .line 1341
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    invoke-virtual {v0, v1, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1345
    :goto_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateWiMAX(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1343
    :cond_3
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWimaxConnected:Z

    goto :goto_4

    .line 1304
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method private final updateDataIcon()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v5, "data_connection"

    .line 1743
    .line 1745
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->isCdma()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1747
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_3

    .line 1748
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hasService()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataState:I

    if-ne v0, v2, :cond_2

    .line 1749
    iget v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataActivity:I

    packed-switch v0, :pswitch_data_0

    .line 1760
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v3

    .line 1763
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "data_connection"

    invoke-virtual {v1, v5, v0, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    move v0, v4

    .line 1795
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1797
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    invoke-interface {v3, v4, v0}, Lcom/android/internal/app/IBatteryStats;->notePhoneDataConnectionState(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1800
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1803
    :goto_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconVisible:Z

    if-eq v1, v0, :cond_1

    .line 1804
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "data_connection"

    invoke-virtual {v1, v5, v0}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1805
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconVisible:Z

    .line 1807
    :cond_1
    return-void

    .line 1751
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v4

    goto :goto_0

    .line 1754
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v2

    goto :goto_0

    .line 1757
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v6

    goto :goto_0

    :cond_2
    move v0, v3

    .line 1765
    goto :goto_1

    .line 1768
    :cond_3
    const v0, 0x7f02007c

    .line 1769
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "data_connection"

    invoke-virtual {v1, v5, v0, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    move v0, v4

    goto :goto_1

    .line 1773
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hasService()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataState:I

    if-ne v0, v2, :cond_5

    .line 1774
    iget v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataActivity:I

    packed-switch v0, :pswitch_data_1

    .line 1786
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v3

    .line 1789
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "data_connection"

    invoke-virtual {v1, v5, v0, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    move v0, v4

    goto :goto_1

    .line 1776
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v4

    goto :goto_3

    .line 1779
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v2

    goto :goto_3

    .line 1782
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v6

    goto :goto_3

    :cond_5
    move v0, v3

    .line 1791
    goto :goto_1

    .line 1798
    :catch_0
    move-exception v3

    .line 1800
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1749
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1774
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private final updateDataNetType(I)V
    .locals 3
    .parameter

    .prologue
    .line 1576
    const-string v0, "StatusBarPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataNetType-T:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    packed-switch p1, :pswitch_data_0

    .line 1736
    :pswitch_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_g:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    .line 1739
    :goto_0
    return-void

    .line 1579
    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_e:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1586
    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_h_plus:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1623
    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_h_plus:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1660
    :pswitch_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_h_plus:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1693
    :pswitch_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_1x:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1696
    :pswitch_6
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_1x:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1701
    :pswitch_7
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_3g:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1704
    :pswitch_8
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_lte:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1577
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private final updateGps(Landroid/content/Intent;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const-string v5, "StatusBarPolicy"

    const-string v3, "gps"

    .line 2118
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2119
    const-string v1, "enabled"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 2124
    const-string v2, "StatusBarPolicy"

    const-string v2, "[GPS ICON] updateGps"

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    const-string v2, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 2128
    const-string v0, "StatusBarPolicy"

    const-string v0, "[GPS ICON] updateGps : GPS is getting fixes"

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gps"

    const v1, 0x1080300

    invoke-virtual {v0, v3, v1, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 2130
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gps"

    invoke-virtual {v0, v3, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 2158
    :goto_0
    return-void

    .line 2131
    :cond_0
    const-string v2, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 2133
    const-string v0, "StatusBarPolicy"

    const-string v0, "[GPS ICON] updateGps : GPS is off"

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gps"

    invoke-virtual {v0, v3, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2137
    :cond_1
    const-string v0, "StatusBarPolicy"

    const-string v0, "[GPS ICON] updateGps : GPS is on, but not receiving fixes"

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gps"

    const v1, 0x7f02007b

    invoke-virtual {v0, v3, v1, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 2139
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gps"

    invoke-virtual {v0, v3, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private updateLowBatteryWarning(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 1002
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 1005
    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryPluggedType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1006
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v2, 0x7f08001e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1007
    .local v0, levelText:Ljava/lang/CharSequence;
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->turnOnScreenWithForce()V

    .line 1011
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1013
    .end local v0           #levelText:Ljava/lang/CharSequence;
    :cond_0
    return-void

    .line 1009
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v2, 0x7f08001f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #levelText:Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private final updateSignalStrength()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const-string v4, "phone_signal"

    .line 1448
    .line 1452
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hasService()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1453
    :cond_0
    const-string v0, "StatusBarPolicy"

    const-string v1, "updateSignalStrength: No SVC"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1456
    const v0, 0x7f02009c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneSignalIconId:I

    .line 1460
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "phone_signal"

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneSignalIconId:I

    invoke-virtual {v0, v4, v1, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1530
    :goto_1
    return-void

    .line 1458
    :cond_1
    const v0, 0x7f02009d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneSignalIconId:I

    goto :goto_0

    .line 1464
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->isCdma()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1467
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getGsmSignalBar()I

    move-result v0

    .line 1501
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sSignalImages:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    move-object v5, v1

    move v1, v0

    move-object v0, v5

    .line 1528
    :goto_2
    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneSignalIconId:I

    .line 1529
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "phone_signal"

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneSignalIconId:I

    invoke-virtual {v0, v4, v1, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_1

    .line 1514
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sSignalImages:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    .line 1519
    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneState:I

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->isEvdo()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1520
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->getEvdoLevel()I

    move-result v1

    goto :goto_2

    .line 1525
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->getCdmaLevel()I

    move-result v1

    goto :goto_2
.end method

.method private final updateSimState(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 1394
    const-string v0, "ss"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1395
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1396
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 1415
    :goto_0
    const-string v0, "StatusBarPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSimState-S"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateDataIcon()V

    .line 1417
    return-void

    .line 1398
    :cond_0
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1399
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1401
    :cond_1
    const-string v1, "LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1402
    const-string v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1403
    const-string v1, "PIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1404
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1406
    :cond_2
    const-string v1, "PUK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1407
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1410
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1413
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0
.end method

.method private final updateSyncState(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 865
    const-string v2, "active"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 866
    .local v0, isActive:Z
    const-string v2, "failing"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 867
    .local v1, isFailing:Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "sync_active"

    invoke-virtual {v2, v3, v0}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 870
    return-void
.end method

.method private final updateTTY(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    const-string v3, "tty"

    .line 2161
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2162
    const-string v0, "ttyEnabled"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 2166
    if-eqz v0, :cond_0

    .line 2169
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "tty"

    const v1, 0x7f02009e

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 2170
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "tty"

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 2176
    :goto_0
    return-void

    .line 2174
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "tty"

    invoke-virtual {v0, v3, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private final updateVolume()V
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    const-string v6, "volume"

    const-string v5, "mute"

    .line 1853
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1855
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v1

    .line 1856
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 1862
    if-ne v1, v2, :cond_4

    if-ne v0, v2, :cond_4

    move v0, v2

    move v1, v2

    .line 1894
    :goto_0
    if-eqz v1, :cond_0

    .line 1895
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "volume"

    const v3, 0x7f02008b

    invoke-virtual {v2, v6, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1897
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mVolumeVisible:Z

    if-eq v1, v2, :cond_1

    .line 1898
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "volume"

    invoke-virtual {v2, v6, v1}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1899
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mVolumeVisible:Z

    .line 1902
    :cond_1
    if-eqz v0, :cond_2

    .line 1903
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "mute"

    const v2, 0x7f020089

    invoke-virtual {v1, v5, v2, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1905
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mMuteVisible:Z

    if-eq v0, v1, :cond_3

    .line 1906
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "mute"

    invoke-virtual {v1, v5, v0}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1907
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mMuteVisible:Z

    .line 1910
    :cond_3
    return-void

    .line 1866
    :cond_4
    if-ne v1, v2, :cond_5

    if-ne v0, v3, :cond_5

    move v0, v4

    move v1, v2

    .line 1868
    goto :goto_0

    .line 1870
    :cond_5
    if-nez v1, :cond_6

    if-nez v0, :cond_6

    move v0, v2

    move v1, v4

    .line 1872
    goto :goto_0

    .line 1874
    :cond_6
    if-nez v1, :cond_7

    if-ne v0, v3, :cond_7

    move v0, v4

    move v1, v4

    .line 1876
    goto :goto_0

    .line 1878
    :cond_7
    if-ne v1, v3, :cond_8

    if-ne v0, v2, :cond_8

    move v0, v2

    move v1, v2

    .line 1880
    goto :goto_0

    .line 1882
    :cond_8
    if-ne v1, v3, :cond_9

    if-ne v0, v3, :cond_9

    move v0, v4

    move v1, v4

    .line 1884
    goto :goto_0

    .line 1886
    :cond_9
    if-ne v1, v2, :cond_a

    if-nez v0, :cond_a

    move v0, v2

    move v1, v4

    .line 1888
    goto :goto_0

    :cond_a
    move v0, v4

    move v1, v4

    goto :goto_0
.end method

.method private final updateWiMAX(Landroid/content/Intent;)V
    .locals 6
    .parameter

    .prologue
    const v4, 0x7f020078

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v5, "wimax"

    .line 2027
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2030
    const-string v1, "android.net.wimax.WIMAX_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2031
    const-string v0, "wimax_status"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2033
    packed-switch v0, :pswitch_data_0

    .line 2065
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWimaxEnabled:Z

    invoke-virtual {v0, v5, v1}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 2066
    return-void

    .line 2035
    :pswitch_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWimaxEnabled:Z

    goto :goto_0

    .line 2038
    :pswitch_2
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWimaxEnabled:Z

    goto :goto_0

    .line 2041
    :cond_1
    const-string v1, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2042
    const-string v0, "newSignalLevel"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWimaxSignal:I

    goto :goto_0

    .line 2043
    :cond_2
    const-string v1, "android.net.wimax.WIMAX_STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2044
    const-string v0, "WimaxState"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWimaxState:I

    .line 2046
    const-string v0, "WimaxStateDetail"

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2050
    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWimaxState:I

    packed-switch v1, :pswitch_data_1

    :pswitch_3
    move v0, v4

    .line 2063
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "wimax"

    invoke-virtual {v1, v5, v0, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_0

    :pswitch_4
    move v0, v4

    .line 2053
    goto :goto_1

    .line 2055
    :pswitch_5
    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 2056
    const v0, 0x7f020079

    goto :goto_1

    .line 2059
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWimaxSignalImages:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWimaxSignal:I

    aget v0, v0, v1

    goto :goto_1

    .line 2033
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2050
    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private final updateWifi(Landroid/content/Intent;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "wifi"

    .line 1962
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1963
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1965
    const-string v0, "wifi_state"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    move v0, v2

    .line 1968
    :goto_0
    if-nez v0, :cond_0

    .line 1970
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wifi"

    invoke-virtual {v0, v4, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 2024
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v3

    .line 1965
    goto :goto_0

    .line 1983
    :cond_2
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1985
    const-string v0, "newRssi"

    const/16 v1, -0xc8

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1986
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWifiSignalImages:[[I

    aget-object v1, v1, v3

    array-length v1, v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    .line 1988
    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWifiSignalLevel:I

    if-eq v0, v1, :cond_0

    .line 1989
    iput v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWifiSignalLevel:I

    .line 1990
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWifiConnected:Z

    if-eqz v1, :cond_3

    .line 1991
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWifiSignalImages:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    aget v0, v1, v0

    .line 1995
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "wifi"

    invoke-virtual {v1, v4, v0, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_1

    .line 1993
    :cond_3
    const v0, 0x7f02009f

    goto :goto_2

    .line 2000
    :cond_4
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2001
    const-string v0, "networkInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 2004
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2005
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWifiConnected:Z

    .line 2006
    iget v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWifiSignalLevel:I

    if-ne v0, v5, :cond_5

    .line 2013
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wifi"

    invoke-virtual {v0, v4, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    .line 2009
    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWifiSignalImages:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWifiSignalLevel:I

    aget v0, v0, v1

    goto :goto_3

    .line 2015
    :cond_6
    iput v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWifiSignalLevel:I

    .line 2016
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWifiConnected:Z

    .line 2020
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wifi"

    invoke-virtual {v0, v4, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1
.end method

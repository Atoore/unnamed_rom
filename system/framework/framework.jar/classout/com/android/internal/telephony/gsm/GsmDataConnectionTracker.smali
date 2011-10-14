.class public final Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;
.super Lcom/android/internal/telephony/DataConnectionTracker;
.source "GsmDataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$OemCommands;,
        Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ApnChangeObserver;
    }
.end annotation


# static fields
.field protected static final APN_DELAY_MILLIS:I = 0x1388

.field static final APN_ID:Ljava/lang/String; = "apn_id"

.field private static final CLEANUP_AFTER_GPRS_DETACHED_TIMER:I = 0x1d4c0

.field private static final INTENT_RECONNECT_ALARM:Ljava/lang/String; = "com.android.internal.telephony.gprs-reconnect"

.field private static final INTENT_RECONNECT_ALARM_EXTRA_REASON:Ljava/lang/String; = "reason"

.field private static final PDP_CONNECTION_POOL_SIZE:I = 0x1

.field private static final POLL_PDP_MILLIS:I = 0x1388

.field static final PREFERAPN_URI:Landroid/net/Uri;


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field private allApns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/ApnSetting;",
            ">;"
        }
    .end annotation
.end field

.field private apnObserver:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ApnChangeObserver;

.field private canSetPreferApn:Z

.field failNextConnect:Z

.field protected mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

.field private mActivePdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDefaultRetryManager:Lcom/android/internal/telephony/RetryManager;

.field private mFastDormPollNetStat:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

.field private mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsPsRestricted:Z

.field private mIsScreenOn:Z

.field private mPdpResetCount:I

.field private mPingTestActive:Z

.field private mPollNetStat:Ljava/lang/Runnable;

.field private mReregisterOnReconnectFailure:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private mSecondaryRetryManager:Lcom/android/internal/telephony/RetryManager;

.field private noAutoAttach:Z

.field private pdpList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation
.end field

.field private preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

.field private waitingApns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/ApnSetting;",
            ">;"
        }
    .end annotation
.end field

.field private waitingApnsPermanentFailureCountDown:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 190
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->PREFERAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .registers 11
    .parameter "p"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v8, "GSM"

    .line 335
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 94
    const-string v3, "GSM"

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->LOG_TAG:Ljava/lang/String;

    .line 123
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->noAutoAttach:Z

    .line 125
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    .line 128
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPingTestActive:Z

    .line 131
    iput v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPdpResetCount:I

    .line 132
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsScreenOn:Z

    .line 138
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->failNextConnect:Z

    .line 146
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    .line 153
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    .line 154
    iput v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->waitingApnsPermanentFailureCountDown:I

    .line 155
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 169
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsPsRestricted:Z

    .line 192
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->canSetPreferApn:Z

    .line 210
    new-instance v3, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;-><init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1047
    new-instance v3, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;-><init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPollNetStat:Ljava/lang/Runnable;

    .line 336
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 337
    iget-object v3, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x3

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 338
    iget-object v3, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xc

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 339
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    const/4 v4, 0x4

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 340
    iget-object v3, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x6

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 341
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    const/16 v4, 0xf

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 342
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    const/16 v4, 0xe

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 343
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v4, 0x1a

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForGprsAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 344
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v4, 0x13

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForGprsDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 345
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v4, 0x15

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 346
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v4, 0x16

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 347
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v4, 0x20

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForPsRestrictedEnabled(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 348
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v4, 0x21

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForPsRestrictedDisabled(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 350
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 351
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "com.android.internal.telephony.gprs-reconnect"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 353
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 355
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 357
    const-string v3, "android.intent.action.BROADCAST_START_NET_STAT_POLL"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 359
    const-string v3, "android.net.action.DUN_DISCONNECTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 360
    const-string v3, "android.net.action.DUN_ATTEMPTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 363
    const-string v3, "android.net.action.DUN_CONNECTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 364
    const-string v3, "android.net.action.DUN_BLOCKED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 365
    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1, v5, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 373
    iput-object p0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    .line 374
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;

    .line 376
    new-instance v3, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ApnChangeObserver;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ApnChangeObserver;-><init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->apnObserver:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ApnChangeObserver;

    .line 377
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->apnObserver:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ApnChangeObserver;

    invoke-virtual {v3, v4, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 380
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->createAllPdpList()V

    .line 383
    new-instance v3, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;-><init>(Lcom/android/internal/telephony/DataConnectionTracker;Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mFastDormPollNetStat:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    .line 387
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 388
    .local v2, sp:Landroid/content/SharedPreferences;
    const/4 v0, 0x1

    .line 390
    .local v0, dataEnabledSetting:Z
    :try_start_105
    const-string v3, "connectivity"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/IConnectivityManager;->getMobileDataEnabled()Z
    :try_end_112
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_112} :catch_19b

    move-result v0

    .line 395
    :goto_113
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    const-string v4, "disabled_on_boot_key"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_197

    if-eqz v0, :cond_197

    move v4, v7

    :goto_120
    aput-boolean v4, v3, v6

    .line 397
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v3, v3, v6

    if-eqz v3, :cond_12e

    .line 398
    iget v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    .line 400
    :cond_12e
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v3, v3, v6

    if-nez v3, :cond_199

    move v3, v7

    :goto_135
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->noAutoAttach:Z

    .line 402
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    const-string/jumbo v4, "ro.gsm.data_retry_config"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_162

    .line 403
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    const-string v4, "default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_162

    .line 405
    const-string v3, "GSM"

    const-string v3, "Could not configure using DEFAULT_DATA_RETRY_CONFIG=default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    const/16 v4, 0x14

    const/16 v5, 0x7d0

    const/16 v6, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/RetryManager;->configure(III)Z

    .line 411
    :cond_162
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mDefaultRetryManager:Lcom/android/internal/telephony/RetryManager;

    .line 412
    new-instance v3, Lcom/android/internal/telephony/RetryManager;

    invoke-direct {v3}, Lcom/android/internal/telephony/RetryManager;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mSecondaryRetryManager:Lcom/android/internal/telephony/RetryManager;

    .line 414
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mSecondaryRetryManager:Lcom/android/internal/telephony/RetryManager;

    const-string/jumbo v4, "ro.gsm.2nd_data_retry_config"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_196

    .line 416
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mSecondaryRetryManager:Lcom/android/internal/telephony/RetryManager;

    const-string/jumbo v4, "max_retries=3, 5000, 5000, 5000"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_196

    .line 418
    const-string v3, "GSM"

    const-string v3, "Could note configure using SECONDARY_DATA_RETRY_CONFIG=max_retries=3, 5000, 5000, 5000"

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mSecondaryRetryManager:Lcom/android/internal/telephony/RetryManager;

    const-string/jumbo v4, "max_retries=3, 333, 333, 333"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    .line 423
    :cond_196
    return-void

    :cond_197
    move v4, v6

    .line 395
    goto :goto_120

    :cond_199
    move v3, v6

    .line 400
    goto :goto_135

    .line 392
    :catch_19b
    move-exception v3

    goto/16 :goto_113
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsScreenOn:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->showDialogOnInternetSharingBlockedByActiveSync()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isInternetSharingBlockedByActiveSync()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->disconnectDun()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->txPkts:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/RetryManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->rxPkts:J

    return-wide v0
.end method

.method static synthetic access$2102(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-wide p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->txPkts:J

    return-wide p1
.end method

.method static synthetic access$2202(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-wide p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->rxPkts:J

    return-wide p1
.end method

.method static synthetic access$2300(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollEnabled:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->txPkts:J

    return-wide v0
.end method

.method static synthetic access$2500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->rxPkts:J

    return-wide v0
.end method

.method static synthetic access$2602(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-wide p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J

    return-wide p1
.end method

.method static synthetic access$2702(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPdpResetCount:I

    return p1
.end method

.method static synthetic access$2800(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$2914(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J
    .registers 5
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/RetryManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-wide p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J

    return-wide p1
.end method

.method static synthetic access$3102(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-wide p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J

    return-wide p1
.end method

.method static synthetic access$3202(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-wide p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J

    return-wide p1
.end method

.method static synthetic access$3300(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Lcom/android/internal/telephony/DataConnectionTracker$Activity;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J

    return-wide v0
.end method

.method static synthetic access$3800(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    return v0
.end method

.method static synthetic access$3900(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/RetryManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    return v0
.end method

.method static synthetic access$4100(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$4208(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    return v0
.end method

.method static synthetic access$4302(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollPeriod:I

    return p1
.end method

.method static synthetic access$4400(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J

    return-wide v0
.end method

.method static synthetic access$4500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->runPingTest()V

    return-void
.end method

.method static synthetic access$4602(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPingTestActive:Z

    return p1
.end method

.method static synthetic access$4702(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    return p1
.end method

.method static synthetic access$4802(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollPeriod:I

    return p1
.end method

.method static synthetic access$4902(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollPeriod:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/RetryManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollEnabled:Z

    return v0
.end method

.method static synthetic access$5100(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollPeriod:I

    return v0
.end method

.method static synthetic access$5200(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/RetryManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    return-object v0
.end method

.method private apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/ApnSetting;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1678
    .local p1, apns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/ApnSetting;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1679
    .local v1, result:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .end local p0
    .local v2, size:I
    :goto_a
    if-ge v0, v2, :cond_28

    .line 1680
    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/gsm/ApnSetting;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1679
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1684
    :cond_28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private buildWaitingApns()Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/ApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v9, "GSM"

    const-string v8, ":"

    .line 1612
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1616
    .local v1, apnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/ApnSetting;>;"
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    const-string v7, "dun"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 1617
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->fetchDunApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v3

    .line 1618
    .local v3, dun:Lcom/android/internal/telephony/gsm/ApnSetting;
    if-eqz v3, :cond_1c

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1658
    .end local v3           #dun:Lcom/android/internal/telephony/gsm/ApnSetting;
    :cond_1c
    :goto_1c
    return-object v1

    .line 1626
    :cond_1d
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    const-string v7, "bip"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 1627
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->fetchBipApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v2

    .line 1628
    .local v2, bip:Lcom/android/internal/telephony/gsm/ApnSetting;
    if-eqz v2, :cond_1c

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 1634
    .end local v2           #bip:Lcom/android/internal/telephony/gsm/ApnSetting;
    :cond_31
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    .line 1636
    .local v5, operator:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    const-string v7, "default"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9b

    .line 1637
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->canSetPreferApn:Z

    if-eqz v6, :cond_9b

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    if-eqz v6, :cond_9b

    .line 1638
    const-string v6, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Preferred APN:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_94

    .line 1641
    const-string v6, "GSM"

    const-string v6, "Waiting APN set to preferred APN"

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 1645
    :cond_94
    const/4 v6, -0x1

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setPreferredApn(I)V

    .line 1646
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 1651
    :cond_9b
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    if-eqz v6, :cond_1c

    .line 1652
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_a5
    :goto_a5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 1653
    .local v0, apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/gsm/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a5

    .line 1654
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a5
.end method

.method private cleanUpConnection(ZLjava/lang/String;)V
    .registers 9
    .parameter "tearDown"
    .parameter "reason"

    .prologue
    .line 684
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clean up connection due to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 687
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_30

    .line 688
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 690
    .local v0, am:Landroid/app/AlarmManager;
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 691
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    .line 694
    .end local v0           #am:Landroid/app/AlarmManager;
    :cond_30
    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 696
    const/4 v3, 0x0

    .line 697
    .local v3, notificationDeferred:Z
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    .line 698
    .local v1, conn:Lcom/android/internal/telephony/DataConnection;
    if-eqz p1, :cond_5a

    .line 699
    const-string v4, "cleanUpConnection: teardown, call conn.disconnect"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 700
    const/16 v4, 0x19

    invoke-virtual {p0, v4, p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/DataConnection;->disconnect(Landroid/os/Message;)V

    .line 701
    const/4 v3, 0x1

    goto :goto_3c

    .line 703
    :cond_5a
    const-string v4, "cleanUpConnection: !tearDown, call conn.resetSynchronously"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 704
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->resetSynchronously()V

    .line 705
    const/4 v3, 0x0

    goto :goto_3c

    .line 708
    .end local v1           #conn:Lcom/android/internal/telephony/DataConnection;
    :cond_64
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->stopNetStatPoll()V

    .line 710
    if-nez v3, :cond_71

    .line 711
    const-string v4, "cleanupConnection: !notificationDeferred"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 712
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V

    .line 714
    :cond_71
    return-void
.end method

.method private createAllApnList()V
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 1496
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    .line 1497
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    .line 1499
    .local v7, operator:Ljava/lang/String;
    if-eqz v7, :cond_80

    .line 1503
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getSelectedNetworkProfile()Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-result-object v8

    .line 1504
    .local v8, profile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;
    if-eqz v8, :cond_a6

    iget-object v0, v8, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mName:Ljava/lang/String;

    if-eqz v0, :cond_a6

    iget-object v0, v8, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a6

    .line 1505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND nwkname = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v8, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR (numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND nwkname = \'\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1514
    .local v3, selection:Ljava/lang/String;
    :goto_5d
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1517
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_80

    .line 1518
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_7d

    .line 1519
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->createApnList(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    .line 1528
    :cond_7d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1532
    .end local v3           #selection:Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v8           #profile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;
    :cond_80
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 1533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No APN found for carrier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1534
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 1535
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V

    .line 1544
    :cond_a5
    :goto_a5
    return-void

    .line 1508
    .restart local v8       #profile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;
    :cond_a6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #selection:Ljava/lang/String;
    goto :goto_5d

    .line 1537
    .end local v3           #selection:Ljava/lang/String;
    .end local v8           #profile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;
    :cond_c1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getPreferredApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 1538
    const-string v0, "GSM"

    const-string v1, "Get PreferredAPN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    if-eqz v0, :cond_a5

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a5

    .line 1540
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 1541
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setPreferredApn(I)V

    goto :goto_a5
.end method

.method private createAllPdpList()V
    .registers 4

    .prologue
    .line 1547
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    .line 1550
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    const/4 v2, 0x1

    if-ge v0, v2, :cond_19

    .line 1551
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->makeDataConnection(Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v1

    .line 1552
    .local v1, pdp:Lcom/android/internal/telephony/DataConnection;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1550
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1554
    .end local v1           #pdp:Lcom/android/internal/telephony/DataConnection;
    :cond_19
    return-void
.end method

.method private createApnList(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .registers 19
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/ApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 733
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 734
    .local v16, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/ApnSetting;>;"
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_fd

    .line 736
    :cond_b
    const-string/jumbo v3, "type"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->parseTypes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 738
    .local v15, types:[Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/gsm/ApnSetting;

    const-string v3, "_id"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string/jumbo v4, "numeric"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "name"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "apn"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "proxy"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "port"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p1

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "mmsc"

    move-object/from16 v0, p1

    move-object v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "mmsproxy"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p1

    move v1, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "mmsport"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p1

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "user"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "password"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "authtype"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-direct/range {v2 .. v15}, Lcom/android/internal/telephony/gsm/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 752
    .local v2, apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    move-object/from16 v0, v16

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_b

    .line 755
    .end local v2           #apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    .end local v15           #types:[Ljava/lang/String;
    :cond_fd
    return-object v16
.end method

.method private destroyAllPdpList()V
    .registers 3

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 1559
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1561
    :cond_b
    return-void
.end method

.method private disconnectDun()V
    .registers 7

    .prologue
    .line 1847
    const-string v3, "[ActiveSync] disconnectDun()"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1849
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1850
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1860
    .local v1, dos:Ljava/io/DataOutputStream;
    const/16 v3, 0x9

    :try_start_11
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1861
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1862
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1863
    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1864
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1865
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_28} :catch_38

    .line 1873
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1874
    if-eqz v1, :cond_37

    .line 1876
    :try_start_34
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_40

    .line 1882
    :cond_37
    :goto_37
    return-void

    .line 1868
    :catch_38
    move-exception v3

    move-object v2, v3

    .line 1869
    .local v2, e:Ljava/io/IOException;
    const-string v3, "Error on disconnectDun()"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_37

    .line 1878
    .end local v2           #e:Ljava/io/IOException;
    :catch_40
    move-exception v2

    .line 1879
    .restart local v2       #e:Ljava/io/IOException;
    const-string v3, "GSM"

    const-string v4, "dos close fail!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37
.end method

.method private doRecovery()V
    .registers 5

    .prologue
    .line 991
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v1, v2, :cond_29

    .line 992
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "pdp_watchdog_max_pdp_reset_fail_count"

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 995
    .local v0, maxPdpReset:I
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPdpResetCount:I

    if-ge v1, v0, :cond_2a

    .line 996
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPdpResetCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPdpResetCount:I

    .line 997
    const v1, 0xc3b6

    iget-wide v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J

    invoke-static {v1, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 998
    const/4 v1, 0x1

    const-string/jumbo v2, "pdpReset"

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 1007
    .end local v0           #maxPdpReset:I
    :cond_29
    :goto_29
    return-void

    .line 1000
    .restart local v0       #maxPdpReset:I
    :cond_2a
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPdpResetCount:I

    .line 1001
    const v1, 0xc3b8

    iget-wide v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J

    invoke-static {v1, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 1002
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->reRegisterNetwork(Landroid/os/Message;)V

    goto :goto_29
.end method

.method private fetchBipApn()Lcom/android/internal/telephony/gsm/ApnSetting;
    .registers 20

    .prologue
    .line 1566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 1568
    .local v18, pref:Landroid/content/SharedPreferences;
    if-nez v18, :cond_19

    .line 1569
    const-string v4, "fetchBipApn : there is no default preferences"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1570
    const/4 v4, 0x0

    .line 1591
    :goto_18
    return-object v4

    .line 1573
    :cond_19
    const-string v4, "bip.pref.enable"

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move-object v1, v4

    move v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 1575
    .local v17, isEnabled:Z
    if-nez v17, :cond_30

    .line 1576
    const-string v4, "fetchBipApn : BIP apn is not enabled"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1577
    const/4 v4, 0x0

    goto :goto_18

    .line 1580
    :cond_30
    const-string v4, "bip.pref.apn"

    const-string v5, ""

    move-object/from16 v0, v18

    move-object v1, v4

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1581
    .local v7, apnname:Ljava/lang/String;
    const-string v4, "bip.pref.user"

    const-string v5, ""

    move-object/from16 v0, v18

    move-object v1, v4

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1582
    .local v13, user:Ljava/lang/String;
    const-string v4, "bip.pref.passwd"

    const-string v5, ""

    move-object/from16 v0, v18

    move-object v1, v4

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1583
    .local v14, passwd:Ljava/lang/String;
    const-string v4, "bip.pref.proxy"

    const-string v5, ""

    move-object/from16 v0, v18

    move-object v1, v4

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1585
    .local v8, proxy:Ljava/lang/String;
    const/4 v4, 0x1

    move v0, v4

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v4, 0x0

    const-string v5, "bip"

    aput-object v5, v16, v4

    .line 1586
    .local v16, types:[Ljava/lang/String;
    new-instance v3, Lcom/android/internal/telephony/gsm/ApnSetting;

    const/4 v4, -0x1

    const-string v5, ""

    const-string v6, "BipApn"

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const-string v12, ""

    const/4 v15, 0x0

    invoke-direct/range {v3 .. v16}, Lcom/android/internal/telephony/gsm/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 1589
    .local v3, apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fetchBipApn ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    move-object v4, v3

    .line 1591
    goto/16 :goto_18
.end method

.method private fetchDunApn()Lcom/android/internal/telephony/gsm/ApnSetting;
    .registers 6

    .prologue
    .line 1596
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1597
    .local v1, c:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "tether_dun_apn"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1599
    .local v0, apnData:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/ApnSetting;->fromString(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v2

    .line 1600
    .local v2, dunSetting:Lcom/android/internal/telephony/gsm/ApnSetting;
    if-eqz v2, :cond_19

    move-object v3, v2

    .line 1603
    :goto_18
    return-object v3

    .line 1602
    :cond_19
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040017

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1603
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/ApnSetting;->fromString(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v3

    goto :goto_18
.end method

.method private findFreePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;
    .registers 6

    .prologue
    .line 759
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    .line 760
    .local v1, conn:Lcom/android/internal/telephony/DataConnection;
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-object v3, v0

    .line 761
    .local v3, pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->isInactive()Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v4, v3

    .line 765
    .end local v1           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v3           #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :goto_1d
    return-object v4

    :cond_1e
    const/4 v4, 0x0

    goto :goto_1d
.end method

.method private getNextApn()Lcom/android/internal/telephony/gsm/ApnSetting;
    .registers 4

    .prologue
    .line 1666
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    .line 1667
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/ApnSetting;>;"
    const/4 v0, 0x0

    .line 1669
    .local v0, apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    if-eqz v1, :cond_12

    .line 1670
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    .line 1671
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    check-cast v0, Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 1674
    .restart local v0       #apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    :cond_12
    return-object v0
.end method

.method private getPreferredApn()Lcom/android/internal/telephony/gsm/ApnSetting;
    .registers 14

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    const-string v12, "_id"

    .line 1708
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    move-object v0, v3

    .line 1738
    :goto_e
    return-object v0

    .line 1712
    :cond_f
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v12, v2, v10

    const-string/jumbo v4, "name"

    aput-object v4, v2, v11

    const/4 v4, 0x2

    const-string v5, "apn"

    aput-object v5, v2, v4

    const-string/jumbo v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1716
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_72

    .line 1717
    iput-boolean v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->canSetPreferApn:Z

    .line 1722
    :goto_38
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->canSetPreferApn:Z

    if-eqz v0, :cond_75

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_75

    .line 1724
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1725
    const-string v0, "_id"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1726
    .local v9, pos:I
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_55
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 1727
    .local v8, p:Lcom/android/internal/telephony/gsm/ApnSetting;
    iget v0, v8, Lcom/android/internal/telephony/gsm/ApnSetting;->id:I

    if-ne v0, v9, :cond_55

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/gsm/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1728
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v8

    .line 1729
    goto :goto_e

    .line 1719
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #p:Lcom/android/internal/telephony/gsm/ApnSetting;
    .end local v9           #pos:I
    :cond_72
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->canSetPreferApn:Z

    goto :goto_38

    .line 1734
    :cond_75
    if-eqz v6, :cond_7a

    .line 1735
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7a
    move-object v0, v3

    .line 1738
    goto :goto_e
.end method

.method private gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V
    .registers 4
    .parameter "reason"

    .prologue
    .line 964
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gotoIdleAndNotifyDataConnection: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 965
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 966
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 967
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 968
    return-void
.end method

.method private isDataAllowed()Z
    .registers 3

    .prologue
    .line 558
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    .line 559
    .local v0, roaming:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getAnyDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_1e

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_18
    iget-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    if-eqz v1, :cond_1e

    const/4 v1, 0x1

    :goto_1d
    return v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method private isInternetSharingBlockedByActiveSync()Z
    .registers 4

    .prologue
    const-string v2, "gsm.allowIS.set"

    .line 1833
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 1834
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 1835
    const-string v0, "[ActiveSync] internet sharing is blocked"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1836
    const-string v0, "gsm.allowIS.set"

    const-string/jumbo v0, "true"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    const-string v0, "[ActiveSync] onReceive() gsm.allowIS.set=true"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1838
    const/4 v0, 0x1

    .line 1843
    :goto_2e
    return v0

    .line 1840
    :cond_2f
    const-string v0, "[ActiveSync] internet sharing is NOT blocked"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1841
    const-string v0, "gsm.allowIS.set"

    const-string v0, "false"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1842
    const-string v0, "[ActiveSync] onReceive() gsm.allowIS.set=false"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1843
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method private notifyDefaultData(Ljava/lang/String;)V
    .registers 3
    .parameter "reason"

    .prologue
    .line 943
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 944
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 945
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->startNetStatPoll()V

    .line 959
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 960
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    .line 961
    return-void
.end method

.method private notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V
    .registers 3
    .parameter "lastFailCauseCode"

    .prologue
    .line 1263
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1264
    return-void
.end method

.method private onApnChanged()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const-string v5, "apnChanged"

    .line 854
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v1, v2, :cond_43

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v1, v2, :cond_43

    const/4 v1, 0x1

    move v0, v1

    .line 857
    .local v0, isConnected:Z
    :goto_11
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateCurrentCarrierInProvider()Z

    .line 860
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.UPDATE_CURRENT_CARRIER_DONE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 866
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->createAllApnList()V

    .line 867
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v1, v2, :cond_42

    .line 868
    const-string v1, "apnChanged"

    invoke-direct {p0, v0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 869
    if-nez v0, :cond_42

    .line 871
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 872
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    .line 873
    const-string v1, "apnChanged"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    .line 876
    :cond_42
    return-void

    .end local v0           #isConnected:Z
    :cond_43
    move v0, v4

    .line 854
    goto :goto_11
.end method

.method private onGprsAttached()V
    .registers 4

    .prologue
    const-string v2, "gprsAttached"

    .line 594
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->removeMessages(I)V

    .line 596
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_18

    .line 597
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->startNetStatPoll()V

    .line 598
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gprsAttached"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 610
    :goto_17
    return-void

    .line 604
    :cond_18
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_29

    .line 605
    const/4 v0, 0x0

    const-string v1, "gprsAttached"

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 606
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 608
    :cond_29
    const-string v0, "gprsAttached"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    goto :goto_17
.end method

.method private parseTypes(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .parameter "types"

    .prologue
    .line 723
    if-eqz p1, :cond_a

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 724
    :cond_a
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 725
    .local v0, result:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "*"

    aput-object v2, v0, v1

    .line 729
    :goto_12
    return-object v0

    .line 727
    .end local v0           #result:[Ljava/lang/String;
    :cond_13
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0       #result:[Ljava/lang/String;
    goto :goto_12
.end method

.method private pdpStatesHasActiveCID(Ljava/util/ArrayList;I)Z
    .registers 6
    .parameter
    .parameter "cid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataCallState;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 839
    .local p1, states:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataCallState;>;"
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .end local p0
    .local v1, s:I
    :goto_5
    if-ge v0, v1, :cond_20

    .line 840
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/DataCallState;

    iget v2, p0, Lcom/android/internal/telephony/DataCallState;->cid:I

    if-ne v2, p2, :cond_1d

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/DataCallState;

    iget v2, p0, Lcom/android/internal/telephony/DataCallState;->active:I

    if-eqz v2, :cond_1d

    .line 841
    const/4 v2, 0x1

    .line 845
    :goto_1c
    return v2

    .line 839
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 845
    :cond_20
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method private pdpStatesHasCID(Ljava/util/ArrayList;I)Z
    .registers 6
    .parameter
    .parameter "cid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataCallState;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 830
    .local p1, states:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataCallState;>;"
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .end local p0
    .local v1, s:I
    :goto_5
    if-ge v0, v1, :cond_16

    .line 831
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/DataCallState;

    iget v2, p0, Lcom/android/internal/telephony/DataCallState;->cid:I

    if-ne v2, p2, :cond_13

    const/4 v2, 0x1

    .line 834
    :goto_12
    return v2

    .line 830
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 834
    :cond_16
    const/4 v2, 0x0

    goto :goto_12
.end method

.method private reconnectAfterFail(Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/String;)V
    .registers 12
    .parameter "lastFailCauseCode"
    .parameter "reason"

    .prologue
    const/4 v5, 0x0

    const-string v8, "GSM"

    .line 1211
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v3, v4, :cond_2b

    .line 1212
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RetryManager;->isRetryNeeded()Z

    move-result v3

    if-nez v3, :cond_31

    .line 1213
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    const-string v4, "default"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 1215
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v4, "apnFailed"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 1216
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onEnableApn(II)V

    .line 1260
    :cond_2b
    :goto_2b
    return-void

    .line 1220
    :cond_2c
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RetryManager;->retryForeverUsingLastTimeout()V

    .line 1237
    :cond_31
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RetryManager;->getRetryTimer()I

    move-result v2

    .line 1238
    .local v2, nextReconnectDelay:I
    const-string v3, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PDP activate failed. Scheduling next attempt for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-int/lit16 v4, v2, 0x3e8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1243
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.internal.telephony.gprs-reconnect"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1244
    .local v1, intent:Landroid/content/Intent;
    const-string/jumbo v3, "reason"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1245
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    .line 1247
    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    int-to-long v6, v2

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1251
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RetryManager;->increaseRetryCount()V

    .line 1253
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->shouldPostNotification(Lcom/android/internal/telephony/DataConnection$FailCause;)Z

    move-result v3

    if-nez v3, :cond_9e

    .line 1254
    const-string v3, "GSM"

    const-string v3, "NOT Posting GPRS Unavailable notification -- likely transient error"

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 1257
    :cond_9e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V

    goto :goto_2b
.end method

.method private resetPollStats()V
    .registers 3

    .prologue
    const-wide/16 v0, -0x1

    .line 983
    iput-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->txPkts:J

    .line 984
    iput-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->rxPkts:J

    .line 985
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J

    .line 986
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollPeriod:I

    .line 987
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    .line 988
    return-void
.end method

.method private retryAfterDisconnected(Ljava/lang/String;)Z
    .registers 4
    .parameter "reason"

    .prologue
    .line 1202
    const/4 v0, 0x1

    .line 1204
    .local v0, retry:Z
    const-string/jumbo v1, "radioTurnedOff"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1205
    const/4 v0, 0x0

    .line 1207
    :cond_b
    return v0
.end method

.method private runPingTest()V
    .registers 10

    .prologue
    const-string v8, "GSM"

    .line 1155
    const/4 v4, -0x1

    .line 1157
    .local v4, status:I
    :try_start_3
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "pdp_watchdog_ping_address"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1159
    .local v0, address:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "pdp_watchdog_ping_deadline"

    const/4 v7, 0x5

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1161
    .local v1, deadline:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pinging "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1162
    if-eqz v0, :cond_72

    const-string v5, "0.0.0.0"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_72

    .line 1163
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ping -c 1 -i 1 -w "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 1165
    .local v3, p:Ljava/lang/Process;
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_71} :catch_88
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_71} :catch_93

    move-result v4

    .line 1173
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #deadline:I
    .end local v3           #p:Ljava/lang/Process;
    :cond_72
    :goto_72
    if-nez v4, :cond_9d

    .line 1176
    const v5, 0xc3b6

    const/4 v6, -0x1

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1177
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPdpResetCount:I

    .line 1178
    const/16 v5, 0x1b

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 1183
    :goto_87
    return-void

    .line 1167
    :catch_88
    move-exception v5

    move-object v2, v5

    .line 1168
    .local v2, e:Ljava/io/IOException;
    const-string v5, "GSM"

    const-string/jumbo v5, "ping failed: IOException"

    invoke-static {v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    .line 1169
    .end local v2           #e:Ljava/io/IOException;
    :catch_93
    move-exception v5

    move-object v2, v5

    .line 1170
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "GSM"

    const-string v5, "exception trying to ping"

    invoke-static {v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    .line 1181
    .end local v2           #e:Ljava/lang/Exception;
    :cond_9d
    const/16 v5, 0x1c

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_87
.end method

.method private setPreferredApn(I)V
    .registers 6
    .parameter "pos"

    .prologue
    const/4 v3, 0x0

    .line 1693
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->canSetPreferApn:Z

    if-nez v2, :cond_6

    .line 1705
    :cond_5
    :goto_5
    return-void

    .line 1697
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1698
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1700
    if-ltz p1, :cond_5

    .line 1701
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1702
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "apn_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1703
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_5
.end method

.method private setupData(Ljava/lang/String;)Z
    .registers 8
    .parameter "reason"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 772
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getNextApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v0

    .line 773
    .local v0, apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    if-nez v0, :cond_a

    move v3, v4

    .line 789
    :goto_9
    return v3

    .line 774
    :cond_a
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->findFreePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    .line 775
    .local v2, pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    if-nez v2, :cond_18

    .line 776
    const-string/jumbo v3, "setupData: No free GsmDataConnection found!"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    move v3, v4

    .line 777
    goto :goto_9

    .line 779
    :cond_18
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 780
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActivePdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;

    .line 782
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 783
    .local v1, msg:Landroid/os/Message;
    iput v5, v1, Landroid/os/Message;->what:I

    .line 784
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 785
    invoke-virtual {v2, v1, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->connect(Landroid/os/Message;Lcom/android/internal/telephony/gsm/ApnSetting;)V

    .line 787
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->INITING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 788
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    move v3, v5

    .line 789
    goto :goto_9
.end method

.method private shouldPostNotification(Lcom/android/internal/telephony/DataConnection$FailCause;)Z
    .registers 3
    .parameter "cause"

    .prologue
    .line 1191
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private showDialogOnInternetSharingBlockedByActiveSync()V
    .registers 4

    .prologue
    .line 1886
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040484

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1887
    .local v0, message:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1888
    return-void
.end method

.method private startDelayedRetry(Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/String;)V
    .registers 3
    .parameter "cause"
    .parameter "reason"

    .prologue
    .line 1688
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V

    .line 1689
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->reconnectAfterFail(Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/String;)V

    .line 1690
    return-void
.end method

.method private startPeriodicPdpPoll()V
    .registers 4

    .prologue
    const/4 v0, 0x7

    .line 977
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->removeMessages(I)V

    .line 979
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 980
    return-void
.end method

.method private trySetupData(Ljava/lang/String;)Z
    .registers 8
    .parameter "reason"

    .prologue
    const/4 v4, 0x0

    const-string v5, "GSM"

    .line 613
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***trySetupData due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_52

    const-string v3, "(unspecified)"

    :goto_12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 615
    const-string v2, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DSAC DEB] trySetupData with mIsPsRestricted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsPsRestricted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v2

    if-eqz v2, :cond_54

    .line 620
    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 621
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 623
    const-string v2, "GSM"

    const-string v2, "(fix?) We\'re on the simulator; assuming data is connected"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const/4 v2, 0x1

    .line 670
    :goto_51
    return v2

    :cond_52
    move-object v3, p1

    .line 613
    goto :goto_12

    .line 627
    :cond_54
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCurrentGprsState()I

    move-result v1

    .line 628
    .local v1, gprsState:I
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getDesiredPowerState()Z

    move-result v0

    .line 630
    .local v0, desiredPowerState:Z
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v2, v3, :cond_70

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v2, v3, :cond_106

    :cond_70
    if-eqz v1, :cond_76

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->noAutoAttach:Z

    if-eqz v2, :cond_106

    :cond_76
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->getRecordsLoaded()Z

    move-result v2

    if-eqz v2, :cond_106

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v3, :cond_94

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isConcurrentVoiceAndData()Z

    move-result v2

    if-eqz v2, :cond_106

    :cond_94
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isDataAllowed()Z

    move-result v2

    if-eqz v2, :cond_106

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsPsRestricted:Z

    if-nez v2, :cond_106

    if-eqz v0, :cond_106

    .line 639
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v2, v3, :cond_e4

    .line 640
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->buildWaitingApns()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    .line 641
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->waitingApnsPermanentFailureCountDown:I

    .line 642
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c8

    .line 643
    const-string v2, "No APN found"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 644
    sget-object v2, Lcom/android/internal/telephony/DataConnection$FailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V

    move v2, v4

    .line 645
    goto :goto_51

    .line 647
    :cond_c8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create from allApns : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 652
    :cond_e4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setup waitngApns : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 654
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setupData(Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_51

    .line 657
    :cond_106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "trySetupData: Not ready for data:  dataState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " gprsState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sim="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->getRecordsLoaded()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " UMTS="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isConcurrentVoiceAndData()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phoneState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isDataAllowed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isDataAllowed()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dataEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getAnyDataEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " roaming="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dataOnRoamingEnable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ps restricted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsPsRestricted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " desiredPowerState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " MasterDataEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    move v2, v4

    .line 670
    goto/16 :goto_51
.end method


# virtual methods
.method public dispose()V
    .registers 3

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 428
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 429
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 430
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataStateChanged(Landroid/os/Handler;)V

    .line 431
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 432
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 433
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForGprsAttached(Landroid/os/Handler;)V

    .line 434
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForGprsDetached(Landroid/os/Handler;)V

    .line 435
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForRoamingOn(Landroid/os/Handler;)V

    .line 436
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForRoamingOff(Landroid/os/Handler;)V

    .line 437
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForPsRestrictedEnabled(Landroid/os/Handler;)V

    .line 438
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForPsRestrictedDisabled(Landroid/os/Handler;)V

    .line 440
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 441
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->apnObserver:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ApnChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 443
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->destroyAllPdpList()V

    .line 444
    return-void
.end method

.method protected finalize()V
    .registers 3

    .prologue
    .line 447
    const-string v0, "GSM"

    const-string v1, "GsmDataConnectionTracker finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    return-void
.end method

.method protected getActiveApnString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 475
    const/4 v0, 0x0

    .line 476
    .local v0, result:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    if-eqz v1, :cond_9

    .line 477
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v0, v1, Lcom/android/internal/telephony/gsm/ApnSetting;->apn:Ljava/lang/String;

    .line 479
    :cond_9
    return-object v0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 465
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    if-eqz v1, :cond_9

    .line 466
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v0, v1, Lcom/android/internal/telephony/gsm/ApnSetting;->types:[Ljava/lang/String;

    .line 471
    .local v0, result:[Ljava/lang/String;
    :goto_8
    return-object v0

    .line 468
    .end local v0           #result:[Ljava/lang/String;
    :cond_9
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 469
    .restart local v0       #result:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "default"

    aput-object v2, v0, v1

    goto :goto_8
.end method

.method public getAllDataConnections()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 553
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 554
    .local v0, pdps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataConnection;>;"
    return-object v0
.end method

.method protected getDnsServers(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .parameter "apnType"

    .prologue
    .line 820
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActivePdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;

    if-eqz v0, :cond_19

    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 823
    :cond_12
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActivePdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getDnsServers()[Ljava/lang/String;

    move-result-object v0

    .line 825
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public getGateway(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "apnType"

    .prologue
    .line 811
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActivePdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;

    if-eqz v0, :cond_19

    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 814
    :cond_12
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActivePdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getGatewayAddress()Ljava/lang/String;

    move-result-object v0

    .line 816
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method protected getInterfaceName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "apnType"

    .prologue
    .line 793
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActivePdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;

    if-eqz v0, :cond_19

    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 796
    :cond_12
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActivePdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getInterface()Ljava/lang/String;

    move-result-object v0

    .line 798
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method protected getIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "apnType"

    .prologue
    .line 802
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActivePdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;

    if-eqz v0, :cond_19

    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 805
    :cond_12
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActivePdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getIpAddress()Ljava/lang/String;

    move-result-object v0

    .line 807
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const-string/jumbo v5, "psRestrictEnabled"

    const-string v3, "GSM"

    .line 1742
    const-string v0, "GSM"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GSMDataConnTrack handleMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-boolean v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    if-nez v0, :cond_2d

    .line 1745
    const-string v0, "GSM"

    const-string v0, "Ignore GSM msgs since GSM phone is inactive"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    :goto_2c
    return-void

    .line 1749
    :cond_2d
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_c8

    .line 1821
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_2c

    .line 1751
    :sswitch_36
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onRecordsLoaded()V

    goto :goto_2c

    .line 1755
    :sswitch_3a
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onGprsDetached()V

    goto :goto_2c

    .line 1759
    :sswitch_3e
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onGprsAttached()V

    goto :goto_2c

    .line 1763
    :sswitch_42
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onPdpStateChanged(Landroid/os/AsyncResult;Z)V

    goto :goto_2c

    .line 1767
    :sswitch_4a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {p0, v0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onPdpStateChanged(Landroid/os/AsyncResult;Z)V

    goto :goto_2c

    .line 1771
    :sswitch_52
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onPollPdp()V

    goto :goto_2c

    .line 1775
    :sswitch_56
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPingTestActive:Z

    .line 1776
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->startNetStatPoll()V

    goto :goto_2c

    .line 1780
    :sswitch_5c
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPingTestActive:Z

    .line 1781
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->doRecovery()V

    goto :goto_2c

    .line 1785
    :sswitch_62
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onApnChanged()V

    goto :goto_2c

    .line 1795
    :sswitch_66
    const-string v0, "GSM"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DSAC DEB] EVENT_PS_RESTRICT_ENABLED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsPsRestricted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->stopNetStatPoll()V

    .line 1797
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsPsRestricted:Z

    goto :goto_2c

    .line 1805
    :sswitch_86
    const-string v0, "GSM"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DSAC DEB] EVENT_PS_RESTRICT_DISABLED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsPsRestricted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsPsRestricted:Z

    .line 1807
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_ac

    .line 1808
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->startNetStatPoll()V

    goto :goto_2c

    .line 1810
    :cond_ac
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_bf

    .line 1811
    const-string/jumbo v0, "psRestrictEnabled"

    invoke-direct {p0, v2, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 1812
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 1813
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    .line 1815
    :cond_bf
    const-string/jumbo v0, "psRestrictEnabled"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    goto/16 :goto_2c

    .line 1749
    nop

    :sswitch_data_c8
    .sparse-switch
        0x4 -> :sswitch_36
        0x6 -> :sswitch_42
        0x7 -> :sswitch_52
        0xb -> :sswitch_4a
        0x13 -> :sswitch_3a
        0x1a -> :sswitch_3e
        0x1b -> :sswitch_56
        0x1c -> :sswitch_5c
        0x1d -> :sswitch_62
        0x20 -> :sswitch_66
        0x21 -> :sswitch_86
    .end sparse-switch
.end method

.method protected isApnTypeActive(Ljava/lang/String;)Z
    .registers 7
    .parameter "type"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 509
    const-string v1, "dun"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 510
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->fetchDunApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v0

    .line 511
    .local v0, dunApn:Lcom/android/internal/telephony/gsm/ApnSetting;
    if-eqz v0, :cond_28

    .line 512
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    if-eqz v1, :cond_26

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    move v1, v4

    .line 517
    .end local v0           #dunApn:Lcom/android/internal/telephony/gsm/ApnSetting;
    :goto_25
    return v1

    .restart local v0       #dunApn:Lcom/android/internal/telephony/gsm/ApnSetting;
    :cond_26
    move v1, v3

    .line 512
    goto :goto_25

    .line 517
    .end local v0           #dunApn:Lcom/android/internal/telephony/gsm/ApnSetting;
    :cond_28
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/gsm/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    move v1, v4

    goto :goto_25

    :cond_36
    move v1, v3

    goto :goto_25
.end method

.method protected isApnTypeAvailable(Ljava/lang/String;)Z
    .registers 7
    .parameter "type"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 524
    const-string v2, "dun"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 525
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->fetchDunApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v2

    if-eqz v2, :cond_12

    move v2, v4

    .line 546
    :goto_11
    return v2

    :cond_12
    move v2, v3

    .line 525
    goto :goto_11

    .line 532
    :cond_14
    const-string v2, "bip"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 533
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->fetchBipApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v2

    if-eqz v2, :cond_24

    move v2, v4

    goto :goto_11

    :cond_24
    move v2, v3

    goto :goto_11

    .line 539
    :cond_26
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    if-eqz v2, :cond_44

    .line 540
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 541
    .local v0, apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    move v2, v4

    .line 542
    goto :goto_11

    .end local v0           #apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_44
    move v2, v3

    .line 546
    goto :goto_11
.end method

.method public isDataConnectionAsDesired()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 492
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    .line 494
    .local v0, roaming:Z
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->getRecordsLoaded()Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCurrentGprsState()I

    move-result v1

    if-nez v1, :cond_39

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v1

    if-eqz v1, :cond_39

    :cond_27
    iget-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z

    if-nez v1, :cond_39

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsPsRestricted:Z

    if-nez v1, :cond_39

    .line 499
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v1, v2, :cond_37

    move v1, v3

    .line 501
    :goto_36
    return v1

    .line 499
    :cond_37
    const/4 v1, 0x0

    goto :goto_36

    :cond_39
    move v1, v3

    .line 501
    goto :goto_36
.end method

.method protected log(Ljava/lang/String;)V
    .registers 5
    .parameter "s"

    .prologue
    .line 1827
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmDataConnectionTracker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    return-void
.end method

.method protected onCleanUpConnection(ZLjava/lang/String;)V
    .registers 3
    .parameter "tearDown"
    .parameter "reason"

    .prologue
    .line 1486
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 1487
    return-void
.end method

.method protected onDataSetupComplete(Landroid/os/AsyncResult;)V
    .registers 12
    .parameter "ar"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v5, "gsm.defaultpdpcontext.active"

    .line 1341
    const/4 v3, 0x0

    .line 1342
    .local v3, reason:Ljava/lang/String;
    iget-object v4, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_10

    .line 1343
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v3           #reason:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1346
    .restart local v3       #reason:Ljava/lang/String;
    :cond_10
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_56

    .line 1348
    const-string v4, "default"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 1349
    const-string/jumbo v4, "onDataSetupComplete gsm.defaultpdpcontext.active == true"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1350
    const-string v4, "gsm.defaultpdpcontext.active"

    const-string/jumbo v4, "true"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->canSetPreferApn:Z

    if-eqz v4, :cond_44

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    if-nez v4, :cond_44

    .line 1352
    const-string v4, "GSM"

    const-string v5, "PREFERRED APN is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 1354
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget v4, v4, Lcom/android/internal/telephony/gsm/ApnSetting;->id:I

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setPreferredApn(I)V

    .line 1360
    :cond_44
    :goto_44
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyDefaultData(Ljava/lang/String;)V

    .line 1403
    :goto_47
    return-void

    .line 1357
    :cond_48
    const-string/jumbo v4, "onDataSetupComplete gsm.defaultpdpcontext.active == false"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1358
    const-string v4, "gsm.defaultpdpcontext.active"

    const-string v4, "false"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_44

    .line 1368
    :cond_56
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    move-object v0, v4

    check-cast v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    move-object v1, v0

    .line 1369
    .local v1, cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PDP setup failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1371
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->isEventLoggable()Z

    move-result v4

    if-eqz v4, :cond_af

    .line 1372
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    .line 1373
    .local v2, loc:Landroid/telephony/gsm/GsmCellLocation;
    const v4, 0xc3b9

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    if-eqz v2, :cond_fe

    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v6

    :goto_98
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1379
    .end local v2           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_af
    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->waitingApnsPermanentFailureCountDown:I

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->isPermanentFail()Z

    move-result v5

    if-eqz v5, :cond_100

    move v5, v8

    :goto_b8
    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->waitingApnsPermanentFailureCountDown:I

    .line 1380
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1381
    const-string/jumbo v4, "onDataSetupComplete: waitingApns.size=%d waitingApnsPermanenatFailureCountDown=%d"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    iget v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->waitingApnsPermanentFailureCountDown:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1386
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_10d

    .line 1387
    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->waitingApnsPermanentFailureCountDown:I

    if-nez v4, :cond_102

    .line 1388
    const-string/jumbo v4, "onDataSetupComplete: Permanent failures stop retrying"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1389
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V

    .line 1390
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v5, "apnFailed"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    goto/16 :goto_47

    .line 1373
    .restart local v2       #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_fe
    const/4 v6, -0x1

    goto :goto_98

    .end local v2           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_100
    move v5, v7

    .line 1379
    goto :goto_b8

    .line 1392
    :cond_102
    const-string/jumbo v4, "onDataSetupComplete: Not all permanent failures, retry"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1393
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->startDelayedRetry(Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/String;)V

    goto/16 :goto_47

    .line 1396
    :cond_10d
    const-string/jumbo v4, "onDataSetupComplete: Try next APN"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1397
    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1400
    const/4 v4, 0x5

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x1388

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_47
.end method

.method protected onDisconnectDone(Landroid/os/AsyncResult;)V
    .registers 5
    .parameter "ar"

    .prologue
    .line 1409
    const/4 v0, 0x0

    .line 1410
    .local v0, reason:Ljava/lang/String;
    const-string v1, "EVENT_DISCONNECT_DONE"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1411
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 1412
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v0           #reason:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1414
    .restart local v0       #reason:Ljava/lang/String;
    :cond_10
    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1415
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 1416
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 1419
    const-string v1, "default"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 1420
    const-string/jumbo v1, "onDisconnectDone gsm.defaultpdpcontext.active == false"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1421
    const-string v1, "gsm.defaultpdpcontext.active"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    :goto_32
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->retryAfterDisconnected(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1435
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    .line 1437
    :cond_3b
    return-void

    .line 1425
    :cond_3c
    const-string/jumbo v1, "onDisconnectDone isApnTypeActive(Phone.APN_TYPE_DEFAULT) == true"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_32
.end method

.method protected onEnableNewApn()V
    .registers 3

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1278
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mDefaultRetryManager:Lcom/android/internal/telephony/RetryManager;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    .line 1282
    :goto_e
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 1286
    const/4 v0, 0x1

    const-string v1, "apnSwitched"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 1287
    return-void

    .line 1280
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mSecondaryRetryManager:Lcom/android/internal/telephony/RetryManager;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    goto :goto_e
.end method

.method protected onGprsDetached()V
    .registers 5

    .prologue
    const-string v3, "gprsDetached"

    .line 573
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->stopNetStatPoll()V

    .line 579
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v2, "gprsDetached"

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 584
    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 585
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 586
    const-string v1, "gprsDetached"

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 587
    const-wide/32 v1, 0x1d4c0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 588
    return-void
.end method

.method protected onPdpStateChanged(Landroid/os/AsyncResult;Z)V
    .registers 13
    .parameter "ar"
    .parameter "explicitPoll"

    .prologue
    const v9, 0xc3bd

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 887
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    move-object v0, v3

    check-cast v0, Ljava/util/ArrayList;

    move-object v2, v0

    .line 889
    .local v2, pdpStates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataCallState;>;"
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_14

    .line 940
    :cond_13
    :goto_13
    return-void

    .line 896
    :cond_14
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v3, v4, :cond_13

    .line 903
    iget v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->cidActive:I

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdpStatesHasCID(Ljava/util/ArrayList;I)Z

    move-result v3

    if-nez v3, :cond_57

    .line 907
    const-string v3, "GSM"

    const-string v4, "PDP connection has dropped. Reconnecting"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    .line 911
    .local v1, loc:Landroid/telephony/gsm/GsmCellLocation;
    new-array v3, v8, [Ljava/lang/Object;

    if-eqz v1, :cond_55

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v4

    :goto_39
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v9, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 915
    const/4 v3, 0x0

    invoke-direct {p0, v5, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    goto :goto_13

    :cond_55
    move v4, v6

    .line 911
    goto :goto_39

    .line 917
    .end local v1           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_57
    iget v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->cidActive:I

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdpStatesHasActiveCID(Ljava/util/ArrayList;I)Z

    move-result v3

    if-nez v3, :cond_13

    .line 922
    if-nez p2, :cond_6f

    .line 924
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xb

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getPDPContextList(Landroid/os/Message;)V

    goto :goto_13

    .line 927
    :cond_6f
    const-string v3, "GSM"

    const-string v4, "PDP connection has dropped (active=false case).  Reconnecting"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    .line 932
    .restart local v1       #loc:Landroid/telephony/gsm/GsmCellLocation;
    new-array v3, v8, [Ljava/lang/Object;

    if-eqz v1, :cond_a3

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v4

    :goto_86
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v9, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 936
    const/4 v3, 0x0

    invoke-direct {p0, v5, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    goto/16 :goto_13

    :cond_a3
    move v4, v6

    .line 932
    goto :goto_86
.end method

.method protected onPollPdp()V
    .registers 4

    .prologue
    .line 1453
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_1d

    .line 1455
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getPDPContextList(Landroid/os/Message;)V

    .line 1456
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1458
    :cond_1d
    return-void
.end method

.method protected onRadioAvailable()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1309
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 1312
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1313
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 1315
    const-string v0, "GSM"

    const-string v1, "We\'re on the simulator; assuming data is connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v0, v1, :cond_24

    .line 1319
    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 1321
    :cond_24
    return-void
.end method

.method protected onRadioOffOrNotAvailable()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1326
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 1327
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    .line 1329
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 1332
    const-string v0, "GSM"

    const-string v1, "We\'re on the simulator; assuming radio off is meaningless"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    :goto_17
    return-void

    .line 1334
    :cond_18
    const-string v0, "Radio is off and clean up all connection"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1336
    const-string/jumbo v0, "radioTurnedOff"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    goto :goto_17
.end method

.method protected onRecordsLoaded()V
    .registers 3

    .prologue
    .line 1267
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->createAllApnList()V

    .line 1268
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_e

    .line 1269
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 1271
    :cond_e
    const/4 v0, 0x5

    const-string/jumbo v1, "simLoaded"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 1272
    return-void
.end method

.method protected onResetDone(Landroid/os/AsyncResult;)V
    .registers 4
    .parameter "ar"

    .prologue
    .line 1444
    const-string v1, "EVENT_RESET_DONE"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1445
    const/4 v0, 0x0

    .line 1446
    .local v0, reason:Ljava/lang/String;
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 1447
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v0           #reason:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1449
    .restart local v0       #reason:Ljava/lang/String;
    :cond_10
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V

    .line 1450
    return-void
.end method

.method protected onRoamingOff()V
    .registers 2

    .prologue
    .line 1295
    const-string/jumbo v0, "roamingOff"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    .line 1296
    return-void
.end method

.method protected onRoamingOn()V
    .registers 4

    .prologue
    const-string/jumbo v2, "roamingOn"

    .line 1300
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1301
    const-string/jumbo v0, "roamingOn"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    .line 1306
    :goto_f
    return-void

    .line 1303
    :cond_10
    const-string v0, "Tear down data connection on roaming."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1304
    const/4 v0, 0x1

    const-string/jumbo v1, "roamingOn"

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    goto :goto_f
.end method

.method protected onTrySetupData(Ljava/lang/String;)Z
    .registers 3
    .parameter "reason"

    .prologue
    .line 1290
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onVoiceCallEnded()V
    .registers 4

    .prologue
    const-string v2, "2GVoiceCallEnded"

    .line 1468
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_21

    .line 1469
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isConcurrentVoiceAndData()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1470
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->startNetStatPoll()V

    .line 1471
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "2GVoiceCallEnded"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 1483
    :goto_1c
    return-void

    .line 1474
    :cond_1d
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->resetPollStats()V

    goto :goto_1c

    .line 1478
    :cond_21
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 1479
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    .line 1481
    const-string v0, "2GVoiceCallEnded"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    goto :goto_1c
.end method

.method protected onVoiceCallStarted()V
    .registers 3

    .prologue
    .line 1461
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isConcurrentVoiceAndData()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1462
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->stopNetStatPoll()V

    .line 1463
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "2GVoiceCallStarted"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 1465
    :cond_1a
    return-void
.end method

.method protected restartRadio()V
    .registers 5

    .prologue
    const-string/jumbo v3, "net.ppp.reset-by-timeout"

    .line 1032
    const-string v1, "GSM"

    const-string v2, "************TURN OFF RADIO**************"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    const/4 v1, 0x1

    const-string/jumbo v2, "radioTurnedOff"

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 1034
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->powerOffRadioSafely()V

    .line 1043
    const-string/jumbo v1, "net.ppp.reset-by-timeout"

    const-string v1, "0"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1044
    .local v0, reset:I
    const-string/jumbo v1, "net.ppp.reset-by-timeout"

    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    return-void
.end method

.method protected setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V
    .registers 6
    .parameter "s"

    .prologue
    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v0, p1, :cond_36

    .line 453
    const v0, 0xc3c1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnectionTracker$State;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/android/internal/telephony/DataConnectionTracker$State;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 454
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    .line 457
    :cond_36
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_45

    .line 458
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    if-eqz v0, :cond_45

    .line 459
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 461
    :cond_45
    return-void
.end method

.method protected startNetStatPoll()V
    .registers 3

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_20

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPingTestActive:Z

    if-nez v0, :cond_20

    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollEnabled:Z

    if-nez v0, :cond_20

    .line 1011
    const-string v0, "GSM"

    const-string v1, "[DataConnection] Start poll NetStat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->resetPollStats()V

    .line 1013
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollEnabled:Z

    .line 1014
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPollNetStat:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1017
    :cond_20
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 1018
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    .line 1019
    return-void
.end method

.method protected stopNetStatPoll()V
    .registers 3

    .prologue
    .line 1022
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollEnabled:Z

    .line 1025
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 1026
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    .line 1027
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPollNetStat:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1028
    const-string v0, "GSM"

    const-string v1, "[DataConnection] Stop poll NetStat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    return-void
.end method

.class public Landroid/telephony/TelephonyManager;
.super Ljava/lang/Object;
.source "TelephonyManager.java"


# static fields
.field public static final ACTION_PHONE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field public static final CALL_STATE_IDLE:I = 0x0

.field public static final CALL_STATE_OFFHOOK:I = 0x2

.field public static final CALL_STATE_RINGING:I = 0x1

.field public static final DATA_ACTIVITY_DORMANT:I = 0x4

.field public static final DATA_ACTIVITY_IN:I = 0x1

.field public static final DATA_ACTIVITY_INOUT:I = 0x3

.field public static final DATA_ACTIVITY_NONE:I = 0x0

.field public static final DATA_ACTIVITY_OUT:I = 0x2

.field public static final DATA_CONNECTED:I = 0x2

.field public static final DATA_CONNECTING:I = 0x1

.field public static final DATA_DISCONNECTED:I = 0x0

.field public static final DATA_SUSPENDED:I = 0x3

.field public static final EXTRA_INCOMING_NUMBER:Ljava/lang/String; = "incoming_number"

.field public static final EXTRA_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_STATE_IDLE:Ljava/lang/String; = null

.field public static final EXTRA_STATE_OFFHOOK:Ljava/lang/String; = null

.field public static final EXTRA_STATE_RINGING:Ljava/lang/String; = null

.field public static final NETWORK_TYPE_1xRTT:I = 0x7

.field public static final NETWORK_TYPE_CDMA:I = 0x4

.field public static final NETWORK_TYPE_EDGE:I = 0x2

.field public static final NETWORK_TYPE_EHRPD:I = 0xe

.field public static final NETWORK_TYPE_EVDO_0:I = 0x5

.field public static final NETWORK_TYPE_EVDO_A:I = 0x6

.field public static final NETWORK_TYPE_EVDO_B:I = 0xc

.field public static final NETWORK_TYPE_GPRS:I = 0x1

.field public static final NETWORK_TYPE_HSDPA:I = 0x8

.field public static final NETWORK_TYPE_HSPA:I = 0xa

.field public static final NETWORK_TYPE_HSUPA:I = 0x9

.field public static final NETWORK_TYPE_IDEN:I = 0xb

.field public static final NETWORK_TYPE_LTE:I = 0xd

.field public static final NETWORK_TYPE_UMTS:I = 0x3

.field public static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final PHONE_TYPE_CDMA:I = 0x2

.field public static final PHONE_TYPE_GSM:I = 0x1

.field public static final PHONE_TYPE_NONE:I = 0x0

.field public static final SIM_STATE_ABSENT:I = 0x1

.field public static final SIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final SIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final SIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final SIM_STATE_READY:I = 0x5

.field public static final SIM_STATE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TelephonyManager"

.field private static sInstance:Landroid/telephony/TelephonyManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 81
    new-instance v0, Landroid/telephony/TelephonyManager;

    invoke-direct {v0}, Landroid/telephony/TelephonyManager;-><init>()V

    sput-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    .line 137
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    .line 143
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    .line 149
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 73
    const-string/jumbo v0, "telephony.registry"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 75
    return-void
.end method

.method public static getDefault()Landroid/telephony/TelephonyManager;
    .registers 1

    .prologue
    .line 85
    sget-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .registers 2

    .prologue
    .line 855
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private getMobileQualityInfo()Lcom/android/internal/telephony/IMobileQualityInfo;
    .registers 2

    .prologue
    .line 757
    const-string v0, "imobilequalityinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IMobileQualityInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMobileQualityInfo;

    move-result-object v0

    return-object v0
.end method

.method private getPhoneTypeFromNetworkType()I
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 324
    const-string/jumbo v1, "ro.telephony.default_network"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 325
    .local v0, mode:I
    if-ne v0, v2, :cond_c

    .line 326
    const/4 v1, 0x0

    .line 327
    :goto_b
    return v1

    :cond_c
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneType(I)I

    move-result v1

    goto :goto_b
.end method

.method private getPhoneTypeFromProperty()I
    .registers 4

    .prologue
    .line 314
    const-string v1, "gsm.current.phone-type"

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromNetworkType()I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 317
    .local v0, type:I
    return v0
.end method

.method private getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .registers 2

    .prologue
    .line 750
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public disableLocationUpdates()V
    .registers 2

    .prologue
    .line 254
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->disableLocationUpdates()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_8

    .line 258
    :goto_7
    return-void

    .line 256
    :catch_8
    move-exception v0

    goto :goto_7

    .line 255
    :catch_a
    move-exception v0

    goto :goto_7
.end method

.method public enableLocationUpdates()V
    .registers 2

    .prologue
    .line 237
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->enableLocationUpdates()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_8

    .line 241
    :goto_7
    return-void

    .line 239
    :catch_8
    move-exception v0

    goto :goto_7

    .line 238
    :catch_a
    move-exception v0

    goto :goto_7
.end method

.method public getCallState()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 777
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getCallState()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result v1

    .line 783
    :goto_9
    return v1

    .line 778
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move v1, v2

    .line 780
    goto :goto_9

    .line 781
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move v1, v2

    .line 783
    goto :goto_9
.end method

.method public getCdmaEriIconIndex()I
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 906
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconIndex()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result v1

    .line 911
    :goto_9
    return v1

    .line 907
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move v1, v2

    .line 909
    goto :goto_9

    .line 910
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move v1, v2

    .line 911
    goto :goto_9
.end method

.method public getCdmaEriIconMode()I
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 924
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconMode()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result v1

    .line 929
    :goto_9
    return v1

    .line 925
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move v1, v2

    .line 927
    goto :goto_9

    .line 928
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move v1, v2

    .line 929
    goto :goto_9
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 940
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriText()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 945
    :goto_9
    return-object v1

    .line 941
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 943
    goto :goto_9

    .line 944
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 945
    goto :goto_9
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 214
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getCellLocation()Landroid/os/Bundle;

    move-result-object v0

    .line 215
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {v0}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    move-result-object v1

    .line 216
    .local v1, cl:Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/CellLocation;->isEmpty()Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_10} :catch_1b

    move-result v3

    if-eqz v3, :cond_15

    move-object v3, v4

    .line 222
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #cl:Landroid/telephony/CellLocation;
    :goto_14
    return-object v3

    .restart local v0       #bundle:Landroid/os/Bundle;
    .restart local v1       #cl:Landroid/telephony/CellLocation;
    :cond_15
    move-object v3, v1

    .line 218
    goto :goto_14

    .line 219
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #cl:Landroid/telephony/CellLocation;
    :catch_17
    move-exception v3

    move-object v2, v3

    .local v2, ex:Landroid/os/RemoteException;
    move-object v3, v4

    .line 220
    goto :goto_14

    .line 221
    .end local v2           #ex:Landroid/os/RemoteException;
    :catch_1b
    move-exception v3

    move-object v2, v3

    .local v2, ex:Ljava/lang/NullPointerException;
    move-object v3, v4

    .line 222
    goto :goto_14
.end method

.method public getCompleteVoiceMailNumber()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 703
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getCompleteVoiceMailNumber()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 708
    :goto_9
    return-object v1

    .line 704
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 705
    goto :goto_9

    .line 706
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 708
    goto :goto_9
.end method

.method public getDataActivity()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 813
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getDataActivity()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result v1

    .line 819
    :goto_9
    return v1

    .line 814
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move v1, v2

    .line 816
    goto :goto_9

    .line 817
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move v1, v2

    .line 819
    goto :goto_9
.end method

.method public getDataState()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 845
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getDataState()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result v1

    .line 850
    :goto_9
    return v1

    .line 846
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move v1, v2

    .line 848
    goto :goto_9

    .line 849
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move v1, v2

    .line 850
    goto :goto_9
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 196
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceId()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 200
    :goto_9
    return-object v1

    .line 197
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 198
    goto :goto_9

    .line 199
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 200
    goto :goto_9
.end method

.method public getDeviceSoftwareVersion()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 179
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceSvn()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 183
    :goto_9
    return-object v1

    .line 180
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 181
    goto :goto_9

    .line 182
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 183
    goto :goto_9
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 667
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1AlphaTag()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 672
    :goto_9
    return-object v1

    .line 668
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 669
    goto :goto_9

    .line 670
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 672
    goto :goto_9
.end method

.method public getLine1Number()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 647
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1Number()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 652
    :goto_9
    return-object v1

    .line 648
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 649
    goto :goto_9

    .line 650
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 652
    goto :goto_9
.end method

.method public getNeighboringCellInfo()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 270
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getNeighboringCellInfo()Ljava/util/List;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 274
    :goto_9
    return-object v1

    .line 271
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 272
    goto :goto_9

    .line 273
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 274
    goto :goto_9
.end method

.method public getNetworkCountryIso()Ljava/lang/String;
    .registers 2

    .prologue
    .line 390
    const-string v0, "gsm.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .registers 2

    .prologue
    .line 354
    const-string v0, "gsm.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 343
    const-string v0, "gsm.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkType()I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 444
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 445
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_c

    .line 446
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getNetworkType()I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_a} :catch_12

    move-result v2

    .line 456
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_b
    return v2

    .restart local v1       #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_c
    move v2, v3

    .line 449
    goto :goto_b

    .line 451
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :catch_e
    move-exception v2

    move-object v0, v2

    .local v0, ex:Landroid/os/RemoteException;
    move v2, v3

    .line 453
    goto :goto_b

    .line 454
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_12
    move-exception v2

    move-object v0, v2

    .local v0, ex:Ljava/lang/NullPointerException;
    move v2, v3

    .line 456
    goto :goto_b
.end method

.method public getNetworkTypeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 468
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_2c

    .line 492
    :pswitch_7
    const-string v0, "UNKNOWN"

    :goto_9
    return-object v0

    .line 470
    :pswitch_a
    const-string v0, "GPRS"

    goto :goto_9

    .line 472
    :pswitch_d
    const-string v0, "EDGE"

    goto :goto_9

    .line 474
    :pswitch_10
    const-string v0, "UMTS"

    goto :goto_9

    .line 476
    :pswitch_13
    const-string v0, "HSDPA"

    goto :goto_9

    .line 478
    :pswitch_16
    const-string v0, "HSUPA"

    goto :goto_9

    .line 480
    :pswitch_19
    const-string v0, "HSPA"

    goto :goto_9

    .line 482
    :pswitch_1c
    const-string v0, "CDMA"

    goto :goto_9

    .line 484
    :pswitch_1f
    const-string v0, "CDMA - EvDo rev. 0"

    goto :goto_9

    .line 486
    :pswitch_22
    const-string v0, "CDMA - EvDo rev. A"

    goto :goto_9

    .line 488
    :pswitch_25
    const-string v0, "CDMA - EvDo rev. B"

    goto :goto_9

    .line 490
    :pswitch_28
    const-string v0, "CDMA - 1xRTT"

    goto :goto_9

    .line 468
    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_a
        :pswitch_d
        :pswitch_10
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_28
        :pswitch_13
        :pswitch_16
        :pswitch_19
        :pswitch_7
        :pswitch_25
    .end packed-switch
.end method

.method public getPhoneType()I
    .registers 4

    .prologue
    .line 294
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 295
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_b

    .line 296
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v2

    .line 308
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return v2

    .line 299
    .restart local v1       #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_b
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_17

    move-result v2

    goto :goto_a

    .line 301
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :catch_10
    move-exception v2

    move-object v0, v2

    .line 304
    .local v0, ex:Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_a

    .line 305
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_17
    move-exception v2

    move-object v0, v2

    .line 308
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_a
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .registers 2

    .prologue
    .line 593
    const-string v0, "gsm.sim.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .registers 2

    .prologue
    .line 575
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 586
    const-string v0, "gsm.sim.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 605
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumber()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 610
    :goto_9
    return-object v1

    .line 606
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 607
    goto :goto_9

    .line 608
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 610
    goto :goto_9
.end method

.method public getSimState()I
    .registers 3

    .prologue
    .line 545
    const-string v1, "gsm.sim.state"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, prop:Ljava/lang/String;
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 547
    const/4 v1, 0x1

    .line 562
    :goto_f
    return v1

    .line 549
    :cond_10
    const-string v1, "PIN_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 550
    const/4 v1, 0x2

    goto :goto_f

    .line 552
    :cond_1a
    const-string v1, "PUK_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 553
    const/4 v1, 0x3

    goto :goto_f

    .line 555
    :cond_24
    const-string v1, "NETWORK_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 556
    const/4 v1, 0x4

    goto :goto_f

    .line 558
    :cond_2e
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 559
    const/4 v1, 0x5

    goto :goto_f

    .line 562
    :cond_38
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public getSubscriberId()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 629
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSubscriberId()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 634
    :goto_9
    return-object v1

    .line 630
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 631
    goto :goto_9

    .line 632
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 634
    goto :goto_9
.end method

.method public getTelephonyFeature()Ljava/util/Map;
    .registers 3

    .prologue
    .line 1004
    const/4 v0, 0x0

    .line 1007
    .local v0, result:Ljava/util/Map;
    :try_start_1
    const-string/jumbo v1, "phoneext"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephonyExt;->getTelephonyFeature()Ljava/util/Map;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_11

    move-result-object v0

    .line 1012
    :goto_10
    return-object v0

    .line 1009
    :catch_11
    move-exception v1

    goto :goto_10
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 739
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailAlphaTag()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 744
    :goto_9
    return-object v1

    .line 740
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 741
    goto :goto_9

    .line 742
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 744
    goto :goto_9
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 684
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailNumber()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 689
    :goto_9
    return-object v1

    .line 685
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 686
    goto :goto_9

    .line 687
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 689
    goto :goto_9
.end method

.method public getVoiceMessageCount()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 721
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getVoiceMessageCount()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result v1

    .line 726
    :goto_9
    return v1

    .line 722
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move v1, v2

    .line 723
    goto :goto_9

    .line 724
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move v1, v2

    .line 726
    goto :goto_9
.end method

.method public hasIccCard()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 523
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->hasIccCard()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result v1

    .line 529
    :goto_9
    return v1

    .line 524
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move v1, v2

    .line 526
    goto :goto_9

    .line 527
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move v1, v2

    .line 529
    goto :goto_9
.end method

.method public isNetwork3GRoaming()Z
    .registers 4

    .prologue
    .line 376
    const-string/jumbo v0, "true"

    const-string v1, "gsm.operator.is3groaming"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNetworkRoaming()Z
    .registers 3

    .prologue
    .line 364
    const-string/jumbo v0, "true"

    const-string v1, "gsm.operator.isroaming"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .registers 8
    .parameter "listener"
    .parameter "events"

    .prologue
    .line 888
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_22

    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 890
    .local v1, pkgForDebug:Ljava/lang/String;
    :goto_b
    :try_start_b
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    if-eqz v2, :cond_26

    const/4 v2, 0x1

    :goto_12
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 891
    .local v0, notifyNow:Ljava/lang/Boolean;
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v3, p1, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v2, v1, v3, p2, v4}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_21} :catch_2a
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_21} :catch_28

    .line 897
    .end local v0           #notifyNow:Ljava/lang/Boolean;
    :goto_21
    return-void

    .line 888
    .end local v1           #pkgForDebug:Ljava/lang/String;
    :cond_22
    const-string v2, "<unknown>"

    move-object v1, v2

    goto :goto_b

    .line 890
    .restart local v1       #pkgForDebug:Ljava/lang/String;
    :cond_26
    const/4 v2, 0x0

    goto :goto_12

    .line 894
    :catch_28
    move-exception v2

    goto :goto_21

    .line 892
    :catch_2a
    move-exception v2

    goto :goto_21
.end method

.method public notifyMessageWaitingChanged(Z)V
    .registers 4
    .parameter "mwi"

    .prologue
    .line 957
    :try_start_0
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyMessageWaitingChanged(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 962
    :goto_5
    return-void

    .line 958
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 960
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_5
.end method

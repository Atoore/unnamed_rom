.class public Landroid/app/admin/DevicePolicyManager;
.super Ljava/lang/Object;
.source "DevicePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/DevicePolicyManager$1;,
        Landroid/app/admin/DevicePolicyManager$MiscPolicy;,
        Landroid/app/admin/DevicePolicyManager$NetworkPolicy;,
        Landroid/app/admin/DevicePolicyManager$DeviceInventory;,
        Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;,
        Landroid/app/admin/DevicePolicyManager$RoamingPolicy;,
        Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;,
        Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;,
        Landroid/app/admin/DevicePolicyManager$VpnPolicy;,
        Landroid/app/admin/DevicePolicyManager$WiFiPolicy;
    }
.end annotation


# static fields
.field public static final ACTION_ADD_DEVICE_ADMIN:Ljava/lang/String; = "android.app.action.ADD_DEVICE_ADMIN"

.field public static final ACTION_DEVICE_POLICY_MANAGER_STATE_CHANGED:Ljava/lang/String; = "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

.field public static final ACTION_SET_NEW_PASSWORD:Ljava/lang/String; = "android.app.action.SET_NEW_PASSWORD"

.field private static DEBUG:Z = false

.field public static final EXTRA_ADD_EXPLANATION:Ljava/lang/String; = "android.app.extra.ADD_EXPLANATION"

.field public static final EXTRA_DEVICE_ADMIN:Ljava/lang/String; = "android.app.extra.DEVICE_ADMIN"

.field public static final PASSWORD_QUALITY_ALPHABETIC:I = 0x40000

.field public static final PASSWORD_QUALITY_ALPHANUMERIC:I = 0x50000

.field public static final PASSWORD_QUALITY_NUMERIC:I = 0x20000

.field public static final PASSWORD_QUALITY_SOMETHING:I = 0x10000

.field public static final PASSWORD_QUALITY_UNSPECIFIED:I = 0x0

.field public static final RESET_PASSWORD_REQUIRE_ENTRY:I = 0x1

.field private static TAG:Ljava/lang/String; = null

.field public static final WIPE_EXTERNAL_STORAGE:I = 0x1

.field private static localLOGV:Z


# instance fields
.field private mApplicationPolicy:Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;

.field private final mContext:Landroid/content/Context;

.field private mDeviceInventory:Landroid/app/admin/DevicePolicyManager$DeviceInventory;

.field private mEasAccountPolicy:Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;

.field private mEmailAccountPolicy:Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;

.field private final mHandler:Landroid/os/Handler;

.field private mMiscPolicy:Landroid/app/admin/DevicePolicyManager$MiscPolicy;

.field private mNetworkPolicy:Landroid/app/admin/DevicePolicyManager$NetworkPolicy;

.field private mRoamingPolicy:Landroid/app/admin/DevicePolicyManager$RoamingPolicy;

.field private final mService:Landroid/app/admin/IDevicePolicyManager;

.field private final mSync:Ljava/lang/Object;

.field private mVpnPolicy:Landroid/app/admin/DevicePolicyManager$VpnPolicy;

.field private mWiFiPolicy:Landroid/app/admin/DevicePolicyManager$WiFiPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 67
    const-string v0, "DevicePolicyManager"

    sput-object v0, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    .line 68
    sput-boolean v1, Landroid/app/admin/DevicePolicyManager;->DEBUG:Z

    .line 69
    sget-boolean v0, Landroid/app/admin/DevicePolicyManager;->DEBUG:Z

    if-nez v0, :cond_f

    move v0, v1

    :goto_c
    sput-boolean v0, Landroid/app/admin/DevicePolicyManager;->localLOGV:Z

    return-void

    :cond_f
    const/4 v0, 0x1

    goto :goto_c
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1430
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mSync:Ljava/lang/Object;

    .line 77
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Landroid/app/admin/DevicePolicyManager;->mHandler:Landroid/os/Handler;

    .line 79
    const-string v0, "device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 81
    return-void
.end method

.method static synthetic access$1000(Landroid/app/admin/DevicePolicyManager;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .registers 1

    .prologue
    .line 66
    sget-object v0, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static create(Landroid/content/Context;Landroid/os/Handler;)Landroid/app/admin/DevicePolicyManager;
    .registers 4
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 85
    new-instance v0, Landroid/app/admin/DevicePolicyManager;

    invoke-direct {v0, p0, p1}, Landroid/app/admin/DevicePolicyManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 86
    .local v0, me:Landroid/app/admin/DevicePolicyManager;
    iget-object v1, v0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_b

    move-object v1, v0

    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method


# virtual methods
.method public generateRecoveryPassword(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 5
    .parameter "who"

    .prologue
    .line 4467
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 4469
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->generateRecoveryPassword(Landroid/content/ComponentName;)Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 4474
    :goto_a
    return-object v1

    .line 4470
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 4471
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4474
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getActiveAdmins()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 166
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->getActiveAdmins()Ljava/util/List;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 171
    :goto_a
    return-object v1

    .line 167
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 168
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getAdminInfo(Landroid/content/ComponentName;)Landroid/app/admin/DeviceAdminInfo;
    .registers 10
    .parameter "cn"

    .prologue
    const/4 v6, 0x0

    const-string v7, "Unable to parse device policy "

    .line 1267
    :try_start_3
    iget-object v3, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_e} :catch_1e

    move-result-object v0

    .line 1274
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    new-instance v2, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 1275
    .local v2, ri:Landroid/content/pm/ResolveInfo;
    iput-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1278
    :try_start_16
    new-instance v3, Landroid/app/admin/DeviceAdminInfo;

    iget-object v4, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_1d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_1d} :catch_3a
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1d} :catch_56

    .line 1284
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v2           #ri:Landroid/content/pm/ResolveInfo;
    :goto_1d
    return-object v3

    .line 1269
    :catch_1e
    move-exception v3

    move-object v1, v3

    .line 1270
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to retrieve device policy "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v6

    .line 1271
    goto :goto_1d

    .line 1279
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    .restart local v2       #ri:Landroid/content/pm/ResolveInfo;
    :catch_3a
    move-exception v3

    move-object v1, v3

    .line 1280
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v3, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to parse device policy "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v6

    .line 1281
    goto :goto_1d

    .line 1282
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_56
    move-exception v3

    move-object v1, v3

    .line 1283
    .local v1, e:Ljava/io/IOException;
    sget-object v3, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to parse device policy "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v6

    .line 1284
    goto :goto_1d
.end method

.method public getAllowBluetoothMode(Landroid/content/ComponentName;)I
    .registers 5
    .parameter "admin"

    .prologue
    .line 877
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 879
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 884
    :goto_a
    return v1

    .line 880
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 881
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 884
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x2

    goto :goto_a
.end method

.method public getAllowBrowser(Landroid/content/ComponentName;)Z
    .registers 5
    .parameter "admin"

    .prologue
    .line 814
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 816
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getAllowBrowser(Landroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 821
    :goto_a
    return v1

    .line 817
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 818
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 821
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public getAllowCamera(Landroid/content/ComponentName;)Z
    .registers 5
    .parameter "admin"

    .prologue
    .line 709
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 711
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 716
    :goto_a
    return v1

    .line 712
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 713
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 716
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public getAllowDesktopSync(Landroid/content/ComponentName;)Z
    .registers 5
    .parameter "admin"

    .prologue
    .line 1129
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 1131
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getAllowDesktopSync(Landroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 1136
    :goto_a
    return v1

    .line 1132
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 1133
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1136
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public getAllowHTMLEmail(Landroid/content/ComponentName;)Z
    .registers 5
    .parameter "admin"

    .prologue
    .line 793
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 795
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getAllowHTMLEmail(Landroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 800
    :goto_a
    return v1

    .line 796
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 797
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 800
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public getAllowInternetSharing(Landroid/content/ComponentName;)Z
    .registers 5
    .parameter "admin"

    .prologue
    .line 835
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 837
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 842
    :goto_a
    return v1

    .line 838
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 839
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 842
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public getAllowIrDA(Landroid/content/ComponentName;)Z
    .registers 5
    .parameter "admin"

    .prologue
    .line 1150
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 1152
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getAllowIrDA(Landroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 1157
    :goto_a
    return v1

    .line 1153
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 1154
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1157
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public getAllowPOPIMAPEmail(Landroid/content/ComponentName;)Z
    .registers 5
    .parameter "admin"

    .prologue
    .line 772
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 774
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getAllowPOPIMAPEmail(Landroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 779
    :goto_a
    return v1

    .line 775
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 776
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 779
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public getAllowSMIMEEncryptionAlgorithmNegotiation(Landroid/content/ComponentName;)Z
    .registers 5
    .parameter "admin"

    .prologue
    .line 1087
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 1089
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getAllowSMIMEEncryptionAlgorithmNegotiation(Landroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 1094
    :goto_a
    return v1

    .line 1090
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 1091
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1094
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public getAllowSMIMESoftCerts(Landroid/content/ComponentName;)Z
    .registers 5
    .parameter "admin"

    .prologue
    .line 1108
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 1110
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getAllowSMIMESoftCerts(Landroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 1115
    :goto_a
    return v1

    .line 1111
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 1112
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1115
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public getAllowStorageCard(Landroid/content/ComponentName;)Z
    .registers 5
    .parameter "admin"

    .prologue
    .line 686
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 688
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getAllowStorageCard(Landroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 693
    :goto_a
    return v1

    .line 689
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 690
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 693
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public getAllowTextMessaging(Landroid/content/ComponentName;)Z
    .registers 5
    .parameter "admin"

    .prologue
    .line 751
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 753
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getAllowTextMessaging(Landroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 758
    :goto_a
    return v1

    .line 754
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 755
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 758
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public getAllowWifi(Landroid/content/ComponentName;)Z
    .registers 5
    .parameter "admin"

    .prologue
    .line 730
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 732
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 737
    :goto_a
    return v1

    .line 733
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 734
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 737
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public getApplicationPolicy()Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;
    .registers 4

    .prologue
    .line 1443
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1444
    :try_start_3
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mApplicationPolicy:Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;

    if-nez v1, :cond_f

    .line 1445
    new-instance v1, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;-><init>(Landroid/app/admin/DevicePolicyManager;Landroid/app/admin/DevicePolicyManager$1;)V

    iput-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mApplicationPolicy:Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;

    .line 1446
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_13

    .line 1447
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mApplicationPolicy:Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;

    return-object v0

    .line 1446
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getAttachmentsEnabled(Landroid/content/ComponentName;)Z
    .registers 5
    .parameter "admin"

    .prologue
    .line 613
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 615
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getAttachmentsEnabled(Landroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 620
    :goto_a
    return v1

    .line 616
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 617
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 620
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public getCurrentFailedPasswordAttempts()I
    .registers 4

    .prologue
    .line 402
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 404
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->getCurrentFailedPasswordAttempts()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 409
    :goto_a
    return v1

    .line 405
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 406
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, -0x1

    goto :goto_a
.end method

.method public getDeviceInventory()Landroid/app/admin/DevicePolicyManager$DeviceInventory;
    .registers 4

    .prologue
    .line 1475
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1476
    :try_start_3
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mDeviceInventory:Landroid/app/admin/DevicePolicyManager$DeviceInventory;

    if-nez v1, :cond_f

    .line 1477
    new-instance v1, Landroid/app/admin/DevicePolicyManager$DeviceInventory;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/app/admin/DevicePolicyManager$DeviceInventory;-><init>(Landroid/app/admin/DevicePolicyManager;Landroid/app/admin/DevicePolicyManager$1;)V

    iput-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mDeviceInventory:Landroid/app/admin/DevicePolicyManager$DeviceInventory;

    .line 1478
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_13

    .line 1479
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mDeviceInventory:Landroid/app/admin/DevicePolicyManager$DeviceInventory;

    return-object v0

    .line 1478
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getEmailAccountPolicy()Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;
    .registers 4

    .prologue
    .line 1467
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1468
    :try_start_3
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mEmailAccountPolicy:Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;

    if-nez v1, :cond_f

    .line 1469
    new-instance v1, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;-><init>(Landroid/app/admin/DevicePolicyManager;Landroid/app/admin/DevicePolicyManager$1;)V

    iput-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mEmailAccountPolicy:Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;

    .line 1470
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_13

    .line 1471
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mEmailAccountPolicy:Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;

    return-object v0

    .line 1470
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getExchangeAccountPolicy()Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;
    .registers 4

    .prologue
    .line 1451
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1452
    :try_start_3
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mEasAccountPolicy:Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;

    if-nez v1, :cond_f

    .line 1453
    new-instance v1, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;-><init>(Landroid/app/admin/DevicePolicyManager;Landroid/app/admin/DevicePolicyManager$1;)V

    iput-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mEasAccountPolicy:Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;

    .line 1454
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_13

    .line 1455
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mEasAccountPolicy:Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;

    return-object v0

    .line 1454
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getMaxAttachmentSize(Landroid/content/ComponentName;)I
    .registers 5
    .parameter "admin"

    .prologue
    .line 663
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 665
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getMaxAttachmentSize(Landroid/content/ComponentName;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 670
    :goto_a
    return v1

    .line 666
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 667
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 670
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getMaxCalendarAge(Landroid/content/ComponentName;)I
    .registers 5
    .parameter "admin"

    .prologue
    .line 919
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 921
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getMaxCalendarAge(Landroid/content/ComponentName;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 926
    :goto_a
    return v1

    .line 922
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 923
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 926
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getMaxEmailAge(Landroid/content/ComponentName;)I
    .registers 5
    .parameter "admin"

    .prologue
    .line 940
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 942
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getMaxEmailAge(Landroid/content/ComponentName;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 947
    :goto_a
    return v1

    .line 943
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 944
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 947
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getMaxEmailBodyTruncSize(Landroid/content/ComponentName;)I
    .registers 5
    .parameter "admin"

    .prologue
    .line 961
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 963
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getMaxEmailBodyTruncSize(Landroid/content/ComponentName;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 968
    :goto_a
    return v1

    .line 964
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 965
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 968
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getMaxHtmlEmailBodyTruncSize(Landroid/content/ComponentName;)I
    .registers 5
    .parameter "admin"

    .prologue
    .line 982
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 984
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getMaxHtmlEmailBodyTruncSize(Landroid/content/ComponentName;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 989
    :goto_a
    return v1

    .line 985
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 986
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 989
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I
    .registers 5
    .parameter "admin"

    .prologue
    .line 449
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 451
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 456
    :goto_a
    return v1

    .line 452
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 453
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 456
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getMaximumTimeToLock(Landroid/content/ComponentName;)J
    .registers 5
    .parameter "admin"

    .prologue
    .line 528
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 530
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-wide v1

    .line 535
    :goto_a
    return-wide v1

    .line 531
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 532
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 535
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const-wide/16 v1, 0x0

    goto :goto_a
.end method

.method public getMinPasswordComplexChars(Landroid/content/ComponentName;)I
    .registers 5
    .parameter "admin"

    .prologue
    .line 898
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 900
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getMinPasswordComplexChars(Landroid/content/ComponentName;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 905
    :goto_a
    return v1

    .line 901
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 902
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 905
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getMiscPolicy()Landroid/app/admin/DevicePolicyManager$MiscPolicy;
    .registers 4

    .prologue
    .line 1491
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1492
    :try_start_3
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mMiscPolicy:Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    if-nez v1, :cond_f

    .line 1493
    new-instance v1, Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;-><init>(Landroid/app/admin/DevicePolicyManager;Landroid/app/admin/DevicePolicyManager$1;)V

    iput-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mMiscPolicy:Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    .line 1494
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_13

    .line 1495
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mMiscPolicy:Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    return-object v0

    .line 1494
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getNetworkPolicy()Landroid/app/admin/DevicePolicyManager$NetworkPolicy;
    .registers 4

    .prologue
    .line 1483
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1484
    :try_start_3
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mNetworkPolicy:Landroid/app/admin/DevicePolicyManager$NetworkPolicy;

    if-nez v1, :cond_f

    .line 1485
    new-instance v1, Landroid/app/admin/DevicePolicyManager$NetworkPolicy;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/app/admin/DevicePolicyManager$NetworkPolicy;-><init>(Landroid/app/admin/DevicePolicyManager;Landroid/app/admin/DevicePolicyManager$1;)V

    iput-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mNetworkPolicy:Landroid/app/admin/DevicePolicyManager$NetworkPolicy;

    .line 1486
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_13

    .line 1487
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mNetworkPolicy:Landroid/app/admin/DevicePolicyManager$NetworkPolicy;

    return-object v0

    .line 1486
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getPassword(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 5
    .parameter "admin"

    .prologue
    .line 1407
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 1409
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getPassword(Landroid/content/ComponentName;)Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 1414
    :goto_a
    return-object v1

    .line 1410
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 1411
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1414
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getPasswordExpires(Landroid/content/ComponentName;)I
    .registers 5
    .parameter "admin"

    .prologue
    .line 571
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 573
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordExpires(Landroid/content/ComponentName;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 578
    :goto_a
    return v1

    .line 574
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 575
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 578
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getPasswordHistory(Landroid/content/ComponentName;)I
    .registers 5
    .parameter "admin"

    .prologue
    .line 592
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 594
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordHistory(Landroid/content/ComponentName;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 599
    :goto_a
    return v1

    .line 595
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 596
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 599
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getPasswordMaximumLength(I)I
    .registers 3
    .parameter "quality"

    .prologue
    .line 348
    const/16 v0, 0x10

    return v0
.end method

.method public getPasswordMinimumLength(Landroid/content/ComponentName;)I
    .registers 5
    .parameter "admin"

    .prologue
    .line 330
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 332
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 337
    :goto_a
    return v1

    .line 333
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 334
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 337
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getPasswordQuality(Landroid/content/ComponentName;)I
    .registers 5
    .parameter "admin"

    .prologue
    .line 282
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 284
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 289
    :goto_a
    return v1

    .line 285
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 286
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 289
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getPasswordRecoverable(Landroid/content/ComponentName;)Z
    .registers 5
    .parameter "admin"

    .prologue
    .line 550
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 552
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordRecoverable(Landroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 557
    :goto_a
    return v1

    .line 553
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 554
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 557
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    .registers 6
    .parameter "admin"
    .parameter "result"

    .prologue
    .line 1292
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 1294
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1299
    :cond_9
    :goto_9
    return-void

    .line 1295
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 1296
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public getRequireDeviceEncryption(Landroid/content/ComponentName;)Z
    .registers 5
    .parameter "admin"

    .prologue
    .line 1171
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 1173
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getRequireDeviceEncryption(Landroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 1178
    :goto_a
    return v1

    .line 1174
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 1175
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1178
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getRequireEncryptedSMIMEMessages(Landroid/content/ComponentName;)Z
    .registers 5
    .parameter "admin"

    .prologue
    .line 1024
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 1026
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getRequireEncryptedSMIMEMessages(Landroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 1031
    :goto_a
    return v1

    .line 1027
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 1028
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1031
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getRequireEncryptionSMIMEAlgorithm(Landroid/content/ComponentName;)Z
    .registers 5
    .parameter "admin"

    .prologue
    .line 1066
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 1068
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getRequireEncryptionSMIMEAlgorithm(Landroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 1073
    :goto_a
    return v1

    .line 1069
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 1070
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1073
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getRequireManualSyncRoaming(Landroid/content/ComponentName;)Z
    .registers 5
    .parameter "admin"

    .prologue
    .line 856
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 858
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getRequireManualSyncRoaming(Landroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 863
    :goto_a
    return v1

    .line 859
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 860
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 863
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getRequireSignedSMIMEAlgorithm(Landroid/content/ComponentName;)Z
    .registers 5
    .parameter "admin"

    .prologue
    .line 1045
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 1047
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getRequireSignedSMIMEAlgorithm(Landroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 1052
    :goto_a
    return v1

    .line 1048
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 1049
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1052
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getRequireSignedSMIMEMessages(Landroid/content/ComponentName;)Z
    .registers 5
    .parameter "admin"

    .prologue
    .line 1003
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 1005
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getRequireSignedSMIMEMessages(Landroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 1010
    :goto_a
    return v1

    .line 1006
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 1007
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1010
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z
    .registers 5
    .parameter "admin"

    .prologue
    .line 1192
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 1194
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 1199
    :goto_a
    return v1

    .line 1195
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 1196
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1199
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getRoamingPolicy()Landroid/app/admin/DevicePolicyManager$RoamingPolicy;
    .registers 4

    .prologue
    .line 1459
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1460
    :try_start_3
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mRoamingPolicy:Landroid/app/admin/DevicePolicyManager$RoamingPolicy;

    if-nez v1, :cond_f

    .line 1461
    new-instance v1, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;-><init>(Landroid/app/admin/DevicePolicyManager;Landroid/app/admin/DevicePolicyManager$1;)V

    iput-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mRoamingPolicy:Landroid/app/admin/DevicePolicyManager$RoamingPolicy;

    .line 1462
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_13

    .line 1463
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mRoamingPolicy:Landroid/app/admin/DevicePolicyManager$RoamingPolicy;

    return-object v0

    .line 1462
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getSimplePasswordEnabled(Landroid/content/ComponentName;)Z
    .registers 5
    .parameter "admin"

    .prologue
    .line 638
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 640
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getSimplePasswordEnabled(Landroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 645
    :goto_a
    return v1

    .line 641
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 642
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 645
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public getVpnPolicy()Landroid/app/admin/DevicePolicyManager$VpnPolicy;
    .registers 4

    .prologue
    .line 1507
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1508
    :try_start_3
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mVpnPolicy:Landroid/app/admin/DevicePolicyManager$VpnPolicy;

    if-nez v1, :cond_f

    .line 1509
    new-instance v1, Landroid/app/admin/DevicePolicyManager$VpnPolicy;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/app/admin/DevicePolicyManager$VpnPolicy;-><init>(Landroid/app/admin/DevicePolicyManager;Landroid/app/admin/DevicePolicyManager$1;)V

    iput-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mVpnPolicy:Landroid/app/admin/DevicePolicyManager$VpnPolicy;

    .line 1510
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_13

    .line 1511
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mVpnPolicy:Landroid/app/admin/DevicePolicyManager$VpnPolicy;

    return-object v0

    .line 1510
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getWiFiPolicy()Landroid/app/admin/DevicePolicyManager$WiFiPolicy;
    .registers 4

    .prologue
    .line 1499
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1500
    :try_start_3
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mWiFiPolicy:Landroid/app/admin/DevicePolicyManager$WiFiPolicy;

    if-nez v1, :cond_f

    .line 1501
    new-instance v1, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;-><init>(Landroid/app/admin/DevicePolicyManager;Landroid/app/admin/DevicePolicyManager$1;)V

    iput-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mWiFiPolicy:Landroid/app/admin/DevicePolicyManager$WiFiPolicy;

    .line 1502
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_13

    .line 1503
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mWiFiPolicy:Landroid/app/admin/DevicePolicyManager$WiFiPolicy;

    return-object v0

    .line 1502
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public isActivePasswordExpired()Z
    .registers 4

    .prologue
    .line 382
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 384
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->isActivePasswordExpired()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 389
    :goto_a
    return v1

    .line 385
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 386
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 389
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isActivePasswordSufficient()Z
    .registers 4

    .prologue
    .line 364
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 366
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->isActivePasswordSufficient()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 371
    :goto_a
    return v1

    .line 367
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 368
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 371
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isAdminActive(Landroid/content/ComponentName;)Z
    .registers 5
    .parameter "who"

    .prologue
    .line 148
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 150
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 155
    :goto_a
    return v1

    .line 151
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 152
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public lockNow()V
    .registers 4

    .prologue
    .line 1212
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 1214
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->lockNow()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1219
    :cond_9
    :goto_9
    return-void

    .line 1215
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 1216
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public notifyChanges(Landroid/content/ComponentName;Z)V
    .registers 6
    .parameter "admin"
    .parameter "notifyChanges"

    .prologue
    .line 1387
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 1389
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->notifyChanges(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1394
    :cond_9
    :goto_9
    return-void

    .line 1390
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 1391
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;)Z
    .registers 5
    .parameter "packageName"

    .prologue
    .line 178
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 180
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 185
    :goto_a
    return v1

    .line 181
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 182
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public reboot(Ljava/lang/String;)V
    .registers 5
    .parameter "reason"

    .prologue
    .line 1421
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 1423
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->reboot(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1428
    :cond_9
    :goto_9
    return-void

    .line 1424
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 1425
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public recoverPassword()V
    .registers 4

    .prologue
    .line 1318
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 1320
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->recoverPassword()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1325
    :cond_9
    :goto_9
    return-void

    .line 1321
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 1322
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;)V
    .registers 5
    .parameter "who"

    .prologue
    .line 195
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 197
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 202
    :cond_9
    :goto_9
    return-void

    .line 198
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 199
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public reportFailedPasswordAttempt()V
    .registers 4

    .prologue
    .line 1360
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 1362
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->reportFailedPasswordAttempt()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1367
    :cond_9
    :goto_9
    return-void

    .line 1363
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 1364
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public reportSuccessfulPasswordAttempt()V
    .registers 4

    .prologue
    .line 1373
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 1375
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->reportSuccessfulPasswordAttempt()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1380
    :cond_9
    :goto_9
    return-void

    .line 1376
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 1377
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public resetPassword(Ljava/lang/String;I)Z
    .registers 6
    .parameter "password"
    .parameter "flags"

    .prologue
    .line 488
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 490
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->resetPassword(Ljava/lang/String;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 495
    :goto_a
    return v1

    .line 491
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 492
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 495
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;)V
    .registers 5
    .parameter "policyReceiver"

    .prologue
    .line 1252
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 1254
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1259
    :cond_9
    :goto_9
    return-void

    .line 1255
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 1256
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setActivePasswordState(IIIZZ)V
    .registers 13
    .parameter "quality"
    .parameter "length"
    .parameter "countComplex"
    .parameter "hasSymbol"
    .parameter "notifyChanges"

    .prologue
    .line 1345
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_e

    .line 1348
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/app/admin/IDevicePolicyManager;->setActivePasswordState(IIIZZ)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    .line 1354
    :cond_e
    :goto_e
    return-void

    .line 1350
    :catch_f
    move-exception v0

    move-object v6, v0

    .line 1351
    .local v6, e:Landroid/os/RemoteException;
    sget-object v0, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with device policy service"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method public setAdminPermissions(Landroid/content/ComponentName;)V
    .registers 5
    .parameter "policyReceiver"

    .prologue
    .line 1303
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 1305
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->setAdminPermissions(Landroid/content/ComponentName;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1310
    :cond_9
    :goto_9
    return-void

    .line 1306
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 1307
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setAllowBluetoothMode(Landroid/content/ComponentName;I)V
    .registers 6
    .parameter "admin"
    .parameter "size"

    .prologue
    .line 867
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 869
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAllowBluetoothMode(Landroid/content/ComponentName;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 874
    :cond_9
    :goto_9
    return-void

    .line 870
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 871
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setAllowBrowser(Landroid/content/ComponentName;Z)V
    .registers 6
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 804
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 806
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAllowBrowser(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 811
    :cond_9
    :goto_9
    return-void

    .line 807
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 808
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setAllowCamera(Landroid/content/ComponentName;Z)V
    .registers 6
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 697
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 699
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAllowCamera(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_9} :catch_14

    .line 706
    :cond_9
    :goto_9
    return-void

    .line 700
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 701
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 702
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 703
    .local v0, e:Ljava/lang/SecurityException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "SecurityException occurred"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public setAllowDesktopSync(Landroid/content/ComponentName;Z)V
    .registers 6
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 1119
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 1121
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAllowDesktopSync(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1126
    :cond_9
    :goto_9
    return-void

    .line 1122
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 1123
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setAllowHTMLEmail(Landroid/content/ComponentName;Z)V
    .registers 6
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 783
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 785
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAllowHTMLEmail(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 790
    :cond_9
    :goto_9
    return-void

    .line 786
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 787
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setAllowInternetSharing(Landroid/content/ComponentName;Z)V
    .registers 6
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 825
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 827
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAllowInternetSharing(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 832
    :cond_9
    :goto_9
    return-void

    .line 828
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 829
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setAllowIrDA(Landroid/content/ComponentName;Z)V
    .registers 6
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 1140
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 1142
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAllowIrDA(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1147
    :cond_9
    :goto_9
    return-void

    .line 1143
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 1144
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setAllowPOPIMAPEmail(Landroid/content/ComponentName;Z)V
    .registers 6
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 762
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 764
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAllowPOPIMAPEmail(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 769
    :cond_9
    :goto_9
    return-void

    .line 765
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 766
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setAllowSMIMEEncryptionAlgorithmNegotiation(Landroid/content/ComponentName;Z)V
    .registers 6
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 1077
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 1079
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAllowSMIMEEncryptionAlgorithmNegotiation(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1084
    :cond_9
    :goto_9
    return-void

    .line 1080
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 1081
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setAllowSMIMESoftCerts(Landroid/content/ComponentName;Z)V
    .registers 6
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 1098
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 1100
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAllowSMIMESoftCerts(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1105
    :cond_9
    :goto_9
    return-void

    .line 1101
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 1102
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setAllowStorageCard(Landroid/content/ComponentName;Z)V
    .registers 6
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 676
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 678
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAllowStorageCard(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 683
    :cond_9
    :goto_9
    return-void

    .line 679
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 680
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setAllowTextMessaging(Landroid/content/ComponentName;Z)V
    .registers 6
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 741
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 743
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAllowTextMessaging(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 748
    :cond_9
    :goto_9
    return-void

    .line 744
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 745
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setAllowWifi(Landroid/content/ComponentName;Z)V
    .registers 6
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 720
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 722
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAllowWifi(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 727
    :cond_9
    :goto_9
    return-void

    .line 723
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 724
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setAttachmentsEnabled(Landroid/content/ComponentName;Z)V
    .registers 6
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 603
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 605
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAttachmentsEnabled(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 610
    :cond_9
    :goto_9
    return-void

    .line 606
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 607
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setEncryptionPolicyWithEncryptApp(Landroid/content/Intent;)Z
    .registers 5
    .parameter "intent"

    .prologue
    .line 4478
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 4480
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->setEncryptionPolicyWithEncryptApp(Landroid/content/Intent;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 4485
    :goto_a
    return v1

    .line 4481
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 4482
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4485
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setMaxAttachmentSize(Landroid/content/ComponentName;I)V
    .registers 6
    .parameter "admin"
    .parameter "size"

    .prologue
    .line 653
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 655
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setMaxAttachmentSize(Landroid/content/ComponentName;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 660
    :cond_9
    :goto_9
    return-void

    .line 656
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 657
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setMaxCalendarAge(Landroid/content/ComponentName;I)V
    .registers 6
    .parameter "admin"
    .parameter "size"

    .prologue
    .line 909
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 911
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setMaxCalendarAge(Landroid/content/ComponentName;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 916
    :cond_9
    :goto_9
    return-void

    .line 912
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 913
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setMaxEmailAge(Landroid/content/ComponentName;I)V
    .registers 6
    .parameter "admin"
    .parameter "size"

    .prologue
    .line 930
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 932
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setMaxEmailAge(Landroid/content/ComponentName;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 937
    :cond_9
    :goto_9
    return-void

    .line 933
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 934
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setMaxEmailBodyTruncSize(Landroid/content/ComponentName;I)V
    .registers 6
    .parameter "admin"
    .parameter "size"

    .prologue
    .line 951
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 953
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setMaxEmailBodyTruncSize(Landroid/content/ComponentName;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 958
    :cond_9
    :goto_9
    return-void

    .line 954
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 955
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setMaxHtmlEmailBodyTruncSize(Landroid/content/ComponentName;I)V
    .registers 6
    .parameter "admin"
    .parameter "size"

    .prologue
    .line 972
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 974
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setMaxHtmlEmailBodyTruncSize(Landroid/content/ComponentName;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 979
    :cond_9
    :goto_9
    return-void

    .line 975
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 976
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V
    .registers 6
    .parameter "admin"
    .parameter "num"

    .prologue
    .line 432
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 434
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 439
    :cond_9
    :goto_9
    return-void

    .line 435
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 436
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setMaximumTimeToLock(Landroid/content/ComponentName;J)V
    .registers 7
    .parameter "admin"
    .parameter "timeMs"

    .prologue
    .line 512
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 514
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setMaximumTimeToLock(Landroid/content/ComponentName;J)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 519
    :cond_9
    :goto_9
    return-void

    .line 515
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 516
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setMinPasswordComplexChars(Landroid/content/ComponentName;I)V
    .registers 6
    .parameter "admin"
    .parameter "size"

    .prologue
    .line 888
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 890
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setMinPasswordComplexChars(Landroid/content/ComponentName;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 895
    :cond_9
    :goto_9
    return-void

    .line 891
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 892
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setPasswordExpires(Landroid/content/ComponentName;I)V
    .registers 6
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 561
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 563
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordExpires(Landroid/content/ComponentName;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 568
    :cond_9
    :goto_9
    return-void

    .line 564
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 565
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setPasswordHistory(Landroid/content/ComponentName;I)V
    .registers 6
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 582
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 584
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordHistory(Landroid/content/ComponentName;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 589
    :cond_9
    :goto_9
    return-void

    .line 585
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 586
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setPasswordMinimumLength(Landroid/content/ComponentName;I)V
    .registers 6
    .parameter "admin"
    .parameter "length"

    .prologue
    .line 314
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 316
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 321
    :cond_9
    :goto_9
    return-void

    .line 317
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 318
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setPasswordQuality(Landroid/content/ComponentName;I)V
    .registers 6
    .parameter "admin"
    .parameter "quality"

    .prologue
    .line 266
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 268
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordQuality(Landroid/content/ComponentName;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 273
    :cond_9
    :goto_9
    return-void

    .line 269
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 270
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setPasswordRecoverable(Landroid/content/ComponentName;Z)V
    .registers 6
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 540
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 542
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordRecoverable(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 547
    :cond_9
    :goto_9
    return-void

    .line 543
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 544
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setRecoveryPasswordState(Landroid/content/ComponentName;Z)V
    .registers 6
    .parameter "who"
    .parameter "value"

    .prologue
    .line 1329
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 1331
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setRecoveryPasswordState(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1336
    :cond_9
    :goto_9
    return-void

    .line 1332
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 1333
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setRequireDeviceEncryption(Landroid/content/ComponentName;Z)V
    .registers 6
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 1161
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 1163
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setRequireDeviceEncryption(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1168
    :cond_9
    :goto_9
    return-void

    .line 1164
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 1165
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setRequireEncryptedSMIMEMessages(Landroid/content/ComponentName;Z)V
    .registers 6
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 1014
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 1016
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setRequireEncryptedSMIMEMessages(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1021
    :cond_9
    :goto_9
    return-void

    .line 1017
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 1018
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setRequireEncryptionSMIMEAlgorithm(Landroid/content/ComponentName;Z)V
    .registers 6
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 1056
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 1058
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setRequireEncryptionSMIMEAlgorithm(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1063
    :cond_9
    :goto_9
    return-void

    .line 1059
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 1060
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setRequireManualSyncRoaming(Landroid/content/ComponentName;Z)V
    .registers 6
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 846
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 848
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setRequireManualSyncRoaming(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 853
    :cond_9
    :goto_9
    return-void

    .line 849
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 850
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setRequireSignedSMIMEAlgorithm(Landroid/content/ComponentName;Z)V
    .registers 6
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 1035
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 1037
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setRequireSignedSMIMEAlgorithm(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1042
    :cond_9
    :goto_9
    return-void

    .line 1038
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 1039
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setRequireSignedSMIMEMessages(Landroid/content/ComponentName;Z)V
    .registers 6
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 993
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 995
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setRequireSignedSMIMEMessages(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1000
    :cond_9
    :goto_9
    return-void

    .line 996
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 997
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setRequireStorageCardEncryption(Landroid/content/ComponentName;Z)V
    .registers 6
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 1182
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 1184
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setRequireStorageCardEncryption(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1189
    :cond_9
    :goto_9
    return-void

    .line 1185
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 1186
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setSimplePasswordEnabled(Landroid/content/ComponentName;Z)V
    .registers 6
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 628
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 630
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setSimplePasswordEnabled(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 635
    :cond_9
    :goto_9
    return-void

    .line 631
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 632
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public wipeData(I)V
    .registers 5
    .parameter "flags"

    .prologue
    .line 1239
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 1241
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->wipeData(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1246
    :cond_9
    :goto_9
    return-void

    .line 1242
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 1243
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

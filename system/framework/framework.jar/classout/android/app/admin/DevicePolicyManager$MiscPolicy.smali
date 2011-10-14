.class public Landroid/app/admin/DevicePolicyManager$MiscPolicy;
.super Ljava/lang/Object;
.source "DevicePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MiscPolicy"
.end annotation


# static fields
.field public static final WIPE_EXTERNAL_MEMORY:I = 0x2

.field public static final WIPE_INTERNAL_EXTERNAL_MEMORY:I = 0x3

.field public static final WIPE_INTERNAL_MEMORY:I = 0x1


# instance fields
.field private final mService:Landroid/app/enterprise/IMiscPolicy;

.field final synthetic this$0:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method private constructor <init>(Landroid/app/admin/DevicePolicyManager;)V
    .registers 3
    .parameter

    .prologue
    .line 4027
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->this$0:Landroid/app/admin/DevicePolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4028
    const-string/jumbo v0, "misc_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IMiscPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IMiscPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    .line 4029
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/admin/DevicePolicyManager;Landroid/app/admin/DevicePolicyManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4016
    invoke-direct {p0, p1}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    return-void
.end method


# virtual methods
.method public addBookmarkOnHomeScreenBitmap(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 7
    .parameter "bookmarkUri"
    .parameter "title"
    .parameter "icon"

    .prologue
    .line 4043
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_9

    .line 4045
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IMiscPolicy;->addBookmarkOnHomeScreenBitmap(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 4050
    :cond_9
    :goto_9
    return-void

    .line 4046
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 4047
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public addBookmarkOnHomeScreenByteBuffer(Landroid/net/Uri;Ljava/lang/String;[B)V
    .registers 7
    .parameter "bookmarkUri"
    .parameter "title"
    .parameter "iconBuffer"

    .prologue
    .line 4033
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_9

    .line 4035
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IMiscPolicy;->addBookmarkOnHomeScreenByteBuffer(Landroid/net/Uri;Ljava/lang/String;[B)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 4040
    :cond_9
    :goto_9
    return-void

    .line 4036
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 4037
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public addSubscribedCalendar(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Z
    .registers 8
    .parameter "emailId"
    .parameter "accountType"
    .parameter "url"
    .parameter "displayName"

    .prologue
    .line 4054
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_16

    .line 4056
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/app/enterprise/IMiscPolicy;->addSubscribedCalendar(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 4061
    :goto_a
    return v1

    .line 4057
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 4058
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4061
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public allowBluetooth(Z)Z
    .registers 5
    .parameter "enable"

    .prologue
    .line 4192
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_16

    .line 4194
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IMiscPolicy;->allowBluetooth(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 4199
    :goto_a
    return v1

    .line 4195
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 4196
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4199
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public allowWiFi(Z)Z
    .registers 5
    .parameter "enable"

    .prologue
    .line 4138
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_16

    .line 4140
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IMiscPolicy;->allowWiFi(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 4145
    :goto_a
    return v1

    .line 4141
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 4142
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4145
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public formatInternalStorage(ZZ)Z
    .registers 6
    .parameter "includeSystemDirectory"
    .parameter "includeDataDirectory"

    .prologue
    .line 4367
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_16

    .line 4369
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IMiscPolicy;->formatInternalStorage(ZZ)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 4375
    :goto_a
    return v1

    .line 4371
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 4372
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4375
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public formatSelective([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .parameter "fileList"
    .parameter "filters"

    .prologue
    .line 4338
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_16

    .line 4340
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IMiscPolicy;->formatSelective([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 4345
    :goto_a
    return-object v1

    .line 4341
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 4342
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4345
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public formatStorageCard(Z)Z
    .registers 5
    .parameter "isExternal"

    .prologue
    .line 4387
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_16

    .line 4389
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IMiscPolicy;->formatStorageCard(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 4394
    :goto_a
    return v1

    .line 4390
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 4391
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4394
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getInstalledCertiFicateList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4102
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_16

    .line 4104
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IMiscPolicy;->getInstalledCertiFicateList()Ljava/util/List;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 4109
    :goto_a
    return-object v1

    .line 4105
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 4106
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4109
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public installCertificateWithType(Ljava/lang/String;[B)V
    .registers 6
    .parameter "type"
    .parameter "value"

    .prologue
    .line 4071
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_9

    .line 4073
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IMiscPolicy;->installCertificateWithType(Ljava/lang/String;[B)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 4078
    :cond_9
    :goto_9
    return-void

    .line 4074
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 4075
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public installCertificatesFromSdCard()V
    .registers 4

    .prologue
    .line 4084
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_9

    .line 4086
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IMiscPolicy;->installCertificatesFromSdCard()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 4091
    :cond_9
    :goto_9
    return-void

    .line 4087
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 4088
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public isBluetoothEnabled(Z)Z
    .registers 8
    .parameter "showMsg"

    .prologue
    const/4 v5, 0x1

    .line 4210
    const/4 v1, 0x1

    .line 4212
    .local v1, enabled:Z
    :try_start_2
    iget-object v3, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->this$0:Landroid/app/admin/DevicePolicyManager;

    #getter for: Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/app/admin/DevicePolicyManager;->access$1000(Landroid/app/admin/DevicePolicyManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "bluetooth_enabled"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_11} :catch_19

    move-result v2

    .line 4213
    .local v2, value:I
    if-ne v5, v2, :cond_16

    move v1, v5

    .line 4217
    .end local v2           #value:I
    :goto_15
    return v1

    .line 4213
    .restart local v2       #value:I
    :cond_16
    const/4 v3, 0x0

    move v1, v3

    goto :goto_15

    .line 4214
    .end local v2           #value:I
    :catch_19
    move-exception v3

    move-object v0, v3

    .line 4215
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x1

    goto :goto_15
.end method

.method public isCameraEnabled(Z)Z
    .registers 5
    .parameter "showMsg"

    .prologue
    .line 4246
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_16

    .line 4248
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IMiscPolicy;->isCameraEnabled(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 4253
    :goto_a
    return v1

    .line 4249
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 4250
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4253
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isExternalStorageEncrypted()Z
    .registers 4

    .prologue
    .line 4451
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_16

    .line 4453
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IMiscPolicy;->isExternalStorageEncrypted()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 4458
    :goto_a
    return v1

    .line 4454
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 4455
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4458
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isInternalStorageEncrypted()Z
    .registers 4

    .prologue
    .line 4435
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_16

    .line 4437
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IMiscPolicy;->isInternalStorageEncrypted()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 4442
    :goto_a
    return v1

    .line 4438
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 4439
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4442
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isMicrophoneEnabled(Z)Z
    .registers 5
    .parameter "showMsg"

    .prologue
    .line 4282
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_16

    .line 4284
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IMiscPolicy;->isMicrophoneEnabled(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 4289
    :goto_a
    return v1

    .line 4285
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 4286
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4289
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public isWiFiEnabled(Z)Z
    .registers 8
    .parameter "showMsg"

    .prologue
    const/4 v5, 0x1

    .line 4156
    const/4 v1, 0x1

    .line 4158
    .local v1, enabled:Z
    :try_start_2
    iget-object v3, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->this$0:Landroid/app/admin/DevicePolicyManager;

    #getter for: Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/app/admin/DevicePolicyManager;->access$1000(Landroid/app/admin/DevicePolicyManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_enabled"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_1a

    move-result v2

    .line 4159
    .local v2, value:I
    if-ne v5, v2, :cond_17

    move v1, v5

    .line 4163
    .end local v2           #value:I
    :goto_16
    return v1

    .line 4159
    .restart local v2       #value:I
    :cond_17
    const/4 v3, 0x0

    move v1, v3

    goto :goto_16

    .line 4160
    .end local v2           #value:I
    :catch_1a
    move-exception v3

    move-object v0, v3

    .line 4161
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x1

    goto :goto_16
.end method

.method public setBluetoothState(Z)Z
    .registers 5
    .parameter "enable"

    .prologue
    .line 4174
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_16

    .line 4176
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IMiscPolicy;->setBluetooth(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 4181
    :goto_a
    return v1

    .line 4177
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 4178
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4181
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setCameraState(Z)Z
    .registers 5
    .parameter "enable"

    .prologue
    .line 4228
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_16

    .line 4230
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IMiscPolicy;->setCamera(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 4235
    :goto_a
    return v1

    .line 4231
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 4232
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4235
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setExternalStorageEncryption(Z)V
    .registers 5
    .parameter "isEncrypt"

    .prologue
    .line 4420
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_9

    .line 4422
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IMiscPolicy;->setExternalStorageEncryption(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 4427
    :cond_9
    :goto_9
    return-void

    .line 4423
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 4424
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setInternalStorageEncryption(Z)V
    .registers 5
    .parameter "isEncrypt"

    .prologue
    .line 4404
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_9

    .line 4406
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IMiscPolicy;->setInternalStorageEncryption(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 4411
    :cond_9
    :goto_9
    return-void

    .line 4407
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 4408
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setMicrophoneState(Z)Z
    .registers 5
    .parameter "enable"

    .prologue
    .line 4264
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_16

    .line 4266
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IMiscPolicy;->setMicrophoneState(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 4271
    :goto_a
    return v1

    .line 4267
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 4268
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4271
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setWiFiState(Z)Z
    .registers 5
    .parameter "enable"

    .prologue
    .line 4120
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_16

    .line 4122
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IMiscPolicy;->setWiFi(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 4127
    :goto_a
    return v1

    .line 4123
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 4124
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4127
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public wipeDevice(I)Z
    .registers 8
    .parameter "flags"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 4303
    const/4 v1, 0x0

    .line 4304
    .local v1, result:Z
    iget-object v3, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v3, :cond_1e

    .line 4306
    const/4 v3, 0x2

    if-eq p1, v3, :cond_c

    if-ne p1, v5, :cond_10

    .line 4307
    :cond_c
    const/4 v3, 0x1

    :try_start_d
    invoke-virtual {p0, v3}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->formatStorageCard(Z)Z

    .line 4309
    :cond_10
    if-eq p1, v4, :cond_14

    if-ne p1, v5, :cond_1e

    .line 4310
    :cond_14
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->formatStorageCard(Z)Z

    .line 4311
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->formatInternalStorage(ZZ)Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1d} :catch_20

    move-result v1

    :cond_1e
    move v2, v1

    .line 4318
    .end local v1           #result:Z
    .local v2, result:I
    :goto_1f
    return v2

    .line 4313
    .end local v2           #result:I
    .restart local v1       #result:Z
    :catch_20
    move-exception v3

    move-object v0, v3

    .line 4314
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed talking with misc info policy"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 4315
    .restart local v2       #result:I
    goto :goto_1f
.end method

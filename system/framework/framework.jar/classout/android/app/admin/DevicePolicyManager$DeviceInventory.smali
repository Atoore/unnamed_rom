.class public Landroid/app/admin/DevicePolicyManager$DeviceInventory;
.super Ljava/lang/Object;
.source "DevicePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeviceInventory"
.end annotation


# instance fields
.field private final mService:Landroid/app/enterprise/IDeviceInfo;

.field final synthetic this$0:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method private constructor <init>(Landroid/app/admin/DevicePolicyManager;)V
    .registers 3
    .parameter

    .prologue
    .line 3714
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->this$0:Landroid/app/admin/DevicePolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3715
    const-string v0, "device_info"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IDeviceInfo$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IDeviceInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    .line 3716
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/admin/DevicePolicyManager;Landroid/app/admin/DevicePolicyManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3710
    invoke-direct {p0, p1}, Landroid/app/admin/DevicePolicyManager$DeviceInventory;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    return-void
.end method


# virtual methods
.method public getAvailableCapacityExternal()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3770
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_16

    .line 3772
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getAvailableCapacityExternal()Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 3777
    :goto_a
    return-object v1

    .line 3773
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3774
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3777
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getAvailableCapacityInternal()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3792
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_16

    .line 3794
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getAvailableCapacityInternal()Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 3799
    :goto_a
    return-object v1

    .line 3795
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3796
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3799
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getDeviceMaker()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3880
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_16

    .line 3882
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDeviceMaker()Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 3887
    :goto_a
    return-object v1

    .line 3883
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3884
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3887
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getDeviceName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3825
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_16

    .line 3827
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDeviceName()Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 3832
    :goto_a
    return-object v1

    .line 3828
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3829
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3832
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getDeviceOS()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3891
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_16

    .line 3893
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDeviceOS()Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 3898
    :goto_a
    return-object v1

    .line 3894
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3895
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3898
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getDeviceOSVersion()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3902
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_16

    .line 3904
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDeviceOSVersion()Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 3909
    :goto_a
    return-object v1

    .line 3905
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3906
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3909
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getDevicePlatform()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3913
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_16

    .line 3915
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDevicePlatform()Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 3920
    :goto_a
    return-object v1

    .line 3916
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3917
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3920
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getModelName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3803
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_16

    .line 3805
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getModelName()Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 3810
    :goto_a
    return-object v1

    .line 3806
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3807
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3810
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getModelNumber()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3814
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_16

    .line 3816
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getModelNumber()Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 3821
    :goto_a
    return-object v1

    .line 3817
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3818
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3821
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getModemFirmware()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3858
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_16

    .line 3860
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getModemFirmware()Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 3865
    :goto_a
    return-object v1

    .line 3861
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3862
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3865
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getOSBuild()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3847
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_16

    .line 3849
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getOSBuild()Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 3854
    :goto_a
    return-object v1

    .line 3850
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3851
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3854
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getPlatformSDK()I
    .registers 4

    .prologue
    .line 3869
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_16

    .line 3871
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getPlatformSDK()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 3876
    :goto_a
    return v1

    .line 3872
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3873
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3876
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, -0x1

    goto :goto_a
.end method

.method public getSerialNumber()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3836
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_16

    .line 3838
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getSerialNumber()Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 3843
    :goto_a
    return-object v1

    .line 3839
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3840
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3843
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getTotalCapacityExternal()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3759
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_16

    .line 3761
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getTotalCapacityExternal()Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 3766
    :goto_a
    return-object v1

    .line 3762
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3763
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3766
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getTotalCapacityInternal()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3781
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_16

    .line 3783
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getTotalCapacityInternal()Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 3788
    :goto_a
    return-object v1

    .line 3784
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3785
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3788
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isDeviceCompromised()Z
    .registers 4

    .prologue
    .line 3748
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_16

    .line 3750
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->isDeviceCompromised()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 3755
    :goto_a
    return v1

    .line 3751
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3752
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3755
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isDeviceLocked()Z
    .registers 4

    .prologue
    .line 3737
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_16

    .line 3739
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->isDeviceLocked()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 3744
    :goto_a
    return v1

    .line 3740
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3741
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3744
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isDeviceSecure()Z
    .registers 4

    .prologue
    .line 3723
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_16

    .line 3725
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->isDeviceSecure()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 3730
    :goto_a
    return v1

    .line 3726
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3727
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3730
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

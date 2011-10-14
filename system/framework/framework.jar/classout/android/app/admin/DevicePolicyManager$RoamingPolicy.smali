.class public Landroid/app/admin/DevicePolicyManager$RoamingPolicy;
.super Ljava/lang/Object;
.source "DevicePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RoamingPolicy"
.end annotation


# instance fields
.field private final mService:Landroid/app/enterprise/IRoamingPolicy;

.field final synthetic this$0:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method private constructor <init>(Landroid/app/admin/DevicePolicyManager;)V
    .registers 3
    .parameter

    .prologue
    .line 3005
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->this$0:Landroid/app/admin/DevicePolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3006
    const-string/jumbo v0, "roaming_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IRoamingPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRoamingPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    .line 3007
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/admin/DevicePolicyManager;Landroid/app/admin/DevicePolicyManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3001
    invoke-direct {p0, p1}, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    return-void
.end method


# virtual methods
.method public isRoamingDataEnabled()Z
    .registers 4

    .prologue
    .line 3098
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_16

    .line 3100
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRoamingPolicy;->isRoamingDataEnabled()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 3105
    :goto_a
    return v1

    .line 3101
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3102
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3105
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isRoamingPushEnabled()Z
    .registers 4

    .prologue
    .line 3065
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_16

    .line 3067
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRoamingPolicy;->isRoamingPushEnabled()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 3072
    :goto_a
    return v1

    .line 3068
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3069
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3072
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public isRoamingSyncEnabled()Z
    .registers 4

    .prologue
    .line 3031
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_16

    .line 3033
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRoamingPolicy;->isRoamingSyncEnabled()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 3038
    :goto_a
    return v1

    .line 3034
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3035
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3038
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public setRoamingData(Z)V
    .registers 5
    .parameter "enable"

    .prologue
    .line 3082
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_9

    .line 3084
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRoamingPolicy;->setRoamingData(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 3089
    :cond_9
    :goto_9
    return-void

    .line 3085
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 3086
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setRoamingPush(Z)V
    .registers 5
    .parameter "enable"

    .prologue
    .line 3048
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_9

    .line 3050
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRoamingPolicy;->setRoamingPush(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 3055
    :cond_9
    :goto_9
    return-void

    .line 3051
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 3052
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setRoamingSync(Z)V
    .registers 5
    .parameter "enable"

    .prologue
    .line 3016
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_9

    .line 3018
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRoamingPolicy;->setRoamingSync(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 3023
    :cond_9
    :goto_9
    return-void

    .line 3019
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 3020
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

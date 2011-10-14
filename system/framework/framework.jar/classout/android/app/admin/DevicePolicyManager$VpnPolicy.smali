.class public Landroid/app/admin/DevicePolicyManager$VpnPolicy;
.super Ljava/lang/Object;
.source "DevicePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VpnPolicy"
.end annotation


# instance fields
.field private final lService:Landroid/app/enterprise/IVpnInfoPolicy;

.field final synthetic this$0:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method private constructor <init>(Landroid/app/admin/DevicePolicyManager;)V
    .registers 5
    .parameter

    .prologue
    .line 1648
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->this$0:Landroid/app/admin/DevicePolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1649
    const-string/jumbo v0, "vpn_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IVpnInfoPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IVpnInfoPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    .line 1650
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vpn policy API -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/admin/DevicePolicyManager;Landroid/app/admin/DevicePolicyManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1645
    invoke-direct {p0, p1}, Landroid/app/admin/DevicePolicyManager$VpnPolicy;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    return-void
.end method


# virtual methods
.method public createProfile(Ljava/lang/String;)V
    .registers 5
    .parameter "type"

    .prologue
    .line 1655
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_9

    .line 1656
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->createProfile(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1661
    :cond_9
    :goto_9
    return-void

    .line 1658
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 1659
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed at Vpn policy API createProfile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public getId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1740
    const/4 v1, 0x0

    .line 1742
    .local v1, str:Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v2, :cond_b

    .line 1743
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IVpnInfoPolicy;->getId()Ljava/lang/String;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v1

    .line 1748
    :cond_b
    :goto_b
    return-object v1

    .line 1745
    :catch_c
    move-exception v2

    move-object v0, v2

    .line 1746
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed at Vpn policy API getId"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1716
    const/4 v1, 0x0

    .line 1718
    .local v1, str:Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v2, :cond_b

    .line 1719
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IVpnInfoPolicy;->getName()Ljava/lang/String;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v1

    .line 1724
    :cond_b
    :goto_b
    return-object v1

    .line 1721
    :catch_c
    move-exception v2

    move-object v0, v2

    .line 1722
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed at Vpn policy API getName"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public getServerName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1728
    const/4 v1, 0x0

    .line 1730
    .local v1, str:Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v2, :cond_b

    .line 1731
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IVpnInfoPolicy;->getServerName()Ljava/lang/String;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v1

    .line 1736
    :cond_b
    :goto_b
    return-object v1

    .line 1733
    :catch_c
    move-exception v2

    move-object v0, v2

    .line 1734
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed at Vpn policy API getServerName"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public getState()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1752
    const/4 v1, 0x0

    .line 1754
    .local v1, str:Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v2, :cond_b

    .line 1755
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IVpnInfoPolicy;->getState()Ljava/lang/String;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v1

    .line 1760
    :cond_b
    :goto_b
    return-object v1

    .line 1757
    :catch_c
    move-exception v2

    move-object v0, v2

    .line 1758
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed at Vpn policy API getState"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public getType()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1704
    const/4 v1, 0x0

    .line 1706
    .local v1, str:Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v2, :cond_b

    .line 1707
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IVpnInfoPolicy;->getType()Ljava/lang/String;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v1

    .line 1712
    :cond_b
    :goto_b
    return-object v1

    .line 1709
    :catch_c
    move-exception v2

    move-object v0, v2

    .line 1710
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed at Vpn policy API getType"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public setId(Ljava/lang/String;)V
    .registers 5
    .parameter "Id"

    .prologue
    .line 1685
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_9

    .line 1686
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->setId(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1691
    :cond_9
    :goto_9
    return-void

    .line 1688
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 1689
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed at Vpn policy API setId"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setName(Ljava/lang/String;)V
    .registers 5
    .parameter "name"

    .prologue
    .line 1665
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_9

    .line 1666
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->setName(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1671
    :cond_9
    :goto_9
    return-void

    .line 1668
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 1669
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed at Vpn policy API setName"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setServerName(Ljava/lang/String;)V
    .registers 5
    .parameter "name"

    .prologue
    .line 1675
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_9

    .line 1676
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->setServerName(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1681
    :cond_9
    :goto_9
    return-void

    .line 1678
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 1679
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed at Vpn policy API setServerName"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setState(I)V
    .registers 5
    .parameter "x"

    .prologue
    .line 1695
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_9

    .line 1696
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->setState(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1701
    :cond_9
    :goto_9
    return-void

    .line 1698
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 1699
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed at Vpn policy API setState"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

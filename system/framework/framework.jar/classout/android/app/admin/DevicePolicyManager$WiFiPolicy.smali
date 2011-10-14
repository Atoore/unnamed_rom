.class public Landroid/app/admin/DevicePolicyManager$WiFiPolicy;
.super Ljava/lang/Object;
.source "DevicePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WiFiPolicy"
.end annotation


# instance fields
.field private final mInfoService:Landroid/app/enterprise/IWiFiInfoPolicy;

.field final synthetic this$0:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method private constructor <init>(Landroid/app/admin/DevicePolicyManager;)V
    .registers 3
    .parameter

    .prologue
    .line 1518
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;->this$0:Landroid/app/admin/DevicePolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1519
    const-string/jumbo v0, "wifi_info_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IWiFiInfoPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IWiFiInfoPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;->mInfoService:Landroid/app/enterprise/IWiFiInfoPolicy;

    .line 1521
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/admin/DevicePolicyManager;Landroid/app/admin/DevicePolicyManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1514
    invoke-direct {p0, p1}, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    return-void
.end method


# virtual methods
.method public getBSSID()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1547
    const-string/jumbo v1, "null"

    .line 1549
    .local v1, str:Ljava/lang/String;
    :try_start_3
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;->mInfoService:Landroid/app/enterprise/IWiFiInfoPolicy;

    if-eqz v2, :cond_19

    .line 1550
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;->mInfoService:Landroid/app/enterprise/IWiFiInfoPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IWiFiInfoPolicy;->getBSSID()Ljava/lang/String;
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_e

    move-result-object v2

    .line 1555
    :goto_d
    return-object v2

    .line 1552
    :catch_e
    move-exception v2

    move-object v0, v2

    .line 1553
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed at WiFi policy API getBSSID"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_19
    move-object v2, v1

    .line 1555
    goto :goto_d
.end method

.method public getHiddenSSID()Z
    .registers 4

    .prologue
    .line 1537
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;->mInfoService:Landroid/app/enterprise/IWiFiInfoPolicy;

    if-eqz v1, :cond_16

    .line 1538
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;->mInfoService:Landroid/app/enterprise/IWiFiInfoPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWiFiInfoPolicy;->getHiddenSSID()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 1543
    :goto_a
    return v1

    .line 1540
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 1541
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed at WiFi policy API getHiddenSSID"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1543
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getIpAddress()I
    .registers 4

    .prologue
    .line 1560
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;->mInfoService:Landroid/app/enterprise/IWiFiInfoPolicy;

    if-eqz v1, :cond_16

    .line 1561
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;->mInfoService:Landroid/app/enterprise/IWiFiInfoPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWiFiInfoPolicy;->getIpAddress()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 1566
    :goto_a
    return v1

    .line 1563
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 1564
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed at WiFi policy API getIpAddress"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1566
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, -0x1

    goto :goto_a
.end method

.method public getLinkSpeed()I
    .registers 4

    .prologue
    .line 1583
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;->mInfoService:Landroid/app/enterprise/IWiFiInfoPolicy;

    if-eqz v1, :cond_16

    .line 1584
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;->mInfoService:Landroid/app/enterprise/IWiFiInfoPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWiFiInfoPolicy;->getLinkSpeed()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 1589
    :goto_a
    return v1

    .line 1586
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 1587
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed at WiFi policy API getLinkSpeed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1589
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, -0x1

    goto :goto_a
.end method

.method public getMacAddress()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1570
    const-string/jumbo v1, "null"

    .line 1572
    .local v1, str:Ljava/lang/String;
    :try_start_3
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;->mInfoService:Landroid/app/enterprise/IWiFiInfoPolicy;

    if-eqz v2, :cond_19

    .line 1573
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;->mInfoService:Landroid/app/enterprise/IWiFiInfoPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IWiFiInfoPolicy;->getMacAddress()Ljava/lang/String;
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_e

    move-result-object v2

    .line 1578
    :goto_d
    return-object v2

    .line 1575
    :catch_e
    move-exception v2

    move-object v0, v2

    .line 1576
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed at WiFi policy API getMacAddress"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_19
    move-object v2, v1

    .line 1578
    goto :goto_d
.end method

.method public getNetworkId()I
    .registers 4

    .prologue
    .line 1594
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;->mInfoService:Landroid/app/enterprise/IWiFiInfoPolicy;

    if-eqz v1, :cond_16

    .line 1595
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;->mInfoService:Landroid/app/enterprise/IWiFiInfoPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWiFiInfoPolicy;->getNetworkId()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 1600
    :goto_a
    return v1

    .line 1597
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 1598
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed at WiFi policy API getNetworkId"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1600
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, -0x1

    goto :goto_a
.end method

.method public getRssi()I
    .registers 4

    .prologue
    .line 1605
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;->mInfoService:Landroid/app/enterprise/IWiFiInfoPolicy;

    if-eqz v1, :cond_16

    .line 1606
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;->mInfoService:Landroid/app/enterprise/IWiFiInfoPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWiFiInfoPolicy;->getRssi()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 1611
    :goto_a
    return v1

    .line 1608
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 1609
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed at WiFi policy API getRssi"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1611
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, -0x1

    goto :goto_a
.end method

.method public getSSID()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1524
    const-string/jumbo v1, "null"

    .line 1526
    .local v1, str:Ljava/lang/String;
    :try_start_3
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;->mInfoService:Landroid/app/enterprise/IWiFiInfoPolicy;

    if-eqz v2, :cond_19

    .line 1527
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;->mInfoService:Landroid/app/enterprise/IWiFiInfoPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IWiFiInfoPolicy;->getSSID()Ljava/lang/String;
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_e

    move-result-object v2

    .line 1532
    :goto_d
    return-object v2

    .line 1529
    :catch_e
    move-exception v2

    move-object v0, v2

    .line 1530
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed at WiFi policy API getSSID"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_19
    move-object v2, v1

    .line 1532
    goto :goto_d
.end method

.method public getScanResults()Ljava/util/List;
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
    .line 1638
    const/4 v0, 0x0

    .line 1640
    .local v0, lList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    return-object v0
.end method

.method public getSupplicantState()Landroid/net/wifi/SupplicantState;
    .registers 3

    .prologue
    .line 1630
    const/4 v0, 0x0

    .line 1631
    .local v0, sState:Landroid/net/wifi/SupplicantState;
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;->mInfoService:Landroid/app/enterprise/IWiFiInfoPolicy;

    if-eqz v1, :cond_5

    .line 1634
    :cond_5
    return-object v0
.end method

.method public getWifiState()I
    .registers 5

    .prologue
    .line 1615
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;->mInfoService:Landroid/app/enterprise/IWiFiInfoPolicy;

    if-eqz v1, :cond_36

    .line 1617
    :try_start_4
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWifiState"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;->mInfoService:Landroid/app/enterprise/IWiFiInfoPolicy;

    invoke-interface {v3}, Landroid/app/enterprise/IWiFiInfoPolicy;->getWifiState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;->mInfoService:Landroid/app/enterprise/IWiFiInfoPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWiFiInfoPolicy;->getWifiState()I
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_29} :catch_2b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_29} :catch_38

    move-result v1

    .line 1626
    :goto_2a
    return v1

    .line 1619
    :catch_2b
    move-exception v1

    move-object v0, v1

    .line 1620
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed at WiFi policy API getWifiState1"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1626
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_36
    :goto_36
    const/4 v1, 0x0

    goto :goto_2a

    .line 1621
    :catch_38
    move-exception v1

    move-object v0, v1

    .line 1622
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed at WiFi policy API getWifiState2"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_36
.end method

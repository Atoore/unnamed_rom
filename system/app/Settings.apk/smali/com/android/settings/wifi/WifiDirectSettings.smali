.class public Lcom/android/settings/wifi/WifiDirectSettings;
.super Landroid/preference/PreferenceActivity;
.source "WifiDirectSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiDirectSettings$Scanner;
    }
.end annotation


# instance fields
.field private autoFinish:Z

.field private mAccessPoints:Lcom/android/settings/ProgressCategory;

.field private mConfigureNetwork:Landroid/preference/Preference;

.field private mDialog:Lcom/android/settings/wifi/WifiDirectDialog;

.field private mDirectEnabler:Landroid/preference/CheckBoxPreference;

.field private mDisconnectDirect:Landroid/preference/Preference;

.field private mEnablingDirect:Z

.field private final mFilter:Landroid/content/IntentFilter;

.field private mNotifyDialog:Landroid/app/AlertDialog;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mScanner:Lcom/android/settings/wifi/WifiDirectSettings$Scanner;

.field private mSelected:Lcom/android/settings/wifi/WifiDirectPreference;

.field private mStatus:Landroid/preference/Preference;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 111
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 99
    iput-object v2, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mNotifyDialog:Landroid/app/AlertDialog;

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mEnablingDirect:Z

    .line 109
    iput-object v2, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 112
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mFilter:Landroid/content/IntentFilter;

    .line 113
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifidirect.FOUND_PEERS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifidirect.DIRECT_PEER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifidirect.CREATE_LINK_FAIL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifidirect.GO_LINK_DOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifidirect.STA_DISASSOC"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    new-instance v0, Lcom/android/settings/wifi/WifiDirectSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiDirectSettings$1;-><init>(Lcom/android/settings/wifi/WifiDirectSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 127
    new-instance v0, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;-><init>(Lcom/android/settings/wifi/WifiDirectSettings;Lcom/android/settings/wifi/WifiDirectSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mScanner:Lcom/android/settings/wifi/WifiDirectSettings$Scanner;

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiDirectSettings;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiDirectSettings;->handleEvent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiDirectSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiDirectSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDirectEnabler:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiDirectSettings;)Lcom/android/settings/ProgressCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiDirectSettings;)Lcom/android/settings/wifi/WifiDirectSettings$Scanner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mScanner:Lcom/android/settings/wifi/WifiDirectSettings$Scanner;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiDirectSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDirectSettings;->updateConnectionStatus()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiDirectSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mStatus:Landroid/preference/Preference;

    return-object v0
.end method

.method private generateDefaultSSID()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 694
    const-string v0, "gsm.sim.msisdn"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 696
    const-string v1, "AndroidP2P"

    .line 698
    const-string v2, "WifiDirectSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateDefaultSSID()    mNumber: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   mNumber.length()  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v5, :cond_0

    .line 702
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-static {v2, v0, v5}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v0

    .line 704
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 709
    :goto_0
    return-object v0

    .line 707
    :cond_0
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 708
    const/16 v2, 0x2327

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x3e8

    .line 709
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleEvent(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 556
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 557
    .local v0, action:Ljava/lang/String;
    const-string v1, "WifiDirectSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 560
    const-string v1, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiDirectSettings;->updateWifiState(I)V

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    const-string v1, "android.net.wifidirect.FOUND_PEERS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 563
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDirectSettings;->updateAccessPoints()V

    goto :goto_0

    .line 564
    :cond_2
    const-string v1, "android.net.wifidirect.STA_DISASSOC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 565
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDirectSettings;->updateAccessPoints()V

    goto :goto_0

    .line 566
    :cond_3
    const-string v1, "android.net.wifidirect.CREATE_LINK_FAIL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 567
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 568
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDisconnectDirect:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 569
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isDirectInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 570
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mStatus:Landroid/preference/Preference;

    const v2, 0x7f08017d

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 571
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v4, v4}, Landroid/net/wifi/WifiManager;->setDeviceDiscoveryEnabled(ZZ)Z

    .line 572
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v5, v4}, Landroid/net/wifi/WifiManager;->setDeviceDiscoveryEnabled(ZZ)Z

    goto :goto_0

    .line 574
    :cond_4
    const-string v1, "android.net.wifidirect.DIRECT_PEER_CONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 575
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->autoFinish:Z

    if-eqz v1, :cond_5

    .line 576
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDirectSettings;->finish()V

    .line 578
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDirectSettings;->updateConnectionStatus()V

    goto :goto_0

    .line 579
    :cond_6
    const-string v1, "android.net.wifidirect.CREATE_LINK_COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 580
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDirectSettings;->updateAccessPoints()V

    goto :goto_0

    .line 581
    :cond_7
    const-string v1, "android.net.wifidirect.GO_LINK_DOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 582
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v4, v4}, Landroid/net/wifi/WifiManager;->setDeviceDiscoveryEnabled(ZZ)Z

    .line 583
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v5, v4}, Landroid/net/wifi/WifiManager;->setDeviceDiscoveryEnabled(ZZ)Z

    goto :goto_0
.end method

.method private showDialog(Lcom/android/settings/wifi/WifiDirectPreference;ZLandroid/net/wifi/WifiConfiguration;)V
    .locals 6
    .parameter "accessPoint"
    .parameter "edit"
    .parameter "wifiConfig"

    .prologue
    .line 514
    const-string v0, "WifiDirectSettings"

    const-string v1, "showDialog - edit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDialog:Lcom/android/settings/wifi/WifiDirectDialog;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDialog:Lcom/android/settings/wifi/WifiDirectDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDirectDialog;->dismiss()V

    .line 518
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/WifiDirectDialog;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WifiDirectDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/WifiDirectPreference;ZLandroid/net/wifi/WifiConfiguration;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDialog:Lcom/android/settings/wifi/WifiDirectDialog;

    .line 519
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDialog:Lcom/android/settings/wifi/WifiDirectDialog;

    invoke-virtual {v0, p0}, Lcom/android/settings/wifi/WifiDirectDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 520
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDialog:Lcom/android/settings/wifi/WifiDirectDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDirectDialog;->show()V

    .line 521
    return-void
.end method

.method private updateAccessPoints()V
    .locals 8

    .prologue
    const-string v7, "WifiDirectSettings"

    .line 531
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 533
    .local v1, accessPoints:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/wifi/WifiDirectPreference;>;"
    iget-object v5, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getP2PScanResults()Ljava/util/List;

    move-result-object v4

    .line 534
    .local v4, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v4, :cond_1

    .line 535
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 537
    .local v3, result:Landroid/net/wifi/ScanResult;
    iget-object v5, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v6, "[IBSS]"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 542
    const-string v5, "WifiDirectSettings"

    invoke-virtual {v3}, Landroid/net/wifi/ScanResult;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    new-instance v5, Lcom/android/settings/wifi/WifiDirectPreference;

    invoke-direct {v5, p0, v3}, Lcom/android/settings/wifi/WifiDirectPreference;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 546
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #result:Landroid/net/wifi/ScanResult;
    :cond_1
    const-string v5, "WifiDirectSettings"

    const-string v5, "updateAccessPoints(), ScanResult list updated"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v5, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v5}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 549
    iget-object v5, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 550
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiDirectPreference;

    .line 551
    .local v0, accessPoint:Lcom/android/settings/wifi/WifiDirectPreference;
    iget-object v5, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v5, v0}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 553
    .end local v0           #accessPoint:Lcom/android/settings/wifi/WifiDirectPreference;
    :cond_2
    return-void
.end method

.method private updateConnectionStatus()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const v5, 0x7f08017c

    const-string v3, "WifiDirectSettings"

    .line 588
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isDirectConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 589
    const-string v2, "WifiDirectSettings"

    const-string v2, "updateConnectionStatus : Connected"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 591
    .local v1, mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDirectSettings;->updateAccessPoints()V

    .line 592
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDisconnectDirect:Landroid/preference/Preference;

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 595
    if-eqz v1, :cond_2

    .line 596
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    .line 597
    .local v0, address:I
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isGOCreated()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x12ba8c0

    if-ne v0, v2, :cond_1

    .line 598
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mStatus:Landroid/preference/Preference;

    const v3, 0x7f080183

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiDirectSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiDirectSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 613
    .end local v0           #address:I
    .end local v1           #mWifiInfo:Landroid/net/wifi/WifiInfo;
    :goto_0
    return-void

    .line 602
    .restart local v0       #address:I
    .restart local v1       #mWifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_1
    const-string v2, "WifiDirectSettings"

    const-string v2, "GO && ip is not vaild"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mStatus:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 606
    .end local v0           #address:I
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mStatus:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 609
    .end local v1           #mWifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_3
    const-string v2, "WifiDirectSettings"

    const-string v2, "updateConnectionStatus : Not connected"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDisconnectDirect:Landroid/preference/Preference;

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 611
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mStatus:Landroid/preference/Preference;

    const v3, 0x7f08017d

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method private updateWifiState(I)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v2, "WifiDirectSettings"

    .line 616
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 617
    const-string v1, "WifiDirectSettings"

    const-string v1, "updateWifiState()"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiManager;->setSupplicantAutoScan(Z)Z

    .line 624
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mEnablingDirect:Z

    if-eqz v1, :cond_0

    .line 625
    const-string v1, "WifiDirectSettings"

    const-string v1, "Enabling Direct"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager;->setWifiDirectSetting(Z)Z

    .line 627
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDirectEnabler:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 628
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 630
    .local v0, directConfig:Landroid/net/wifi/WifiConfiguration;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v3, v0, v2}, Landroid/net/wifi/WifiManager;->setWifiDirectEnabled(ZLandroid/net/wifi/WifiConfiguration;I)Z

    .line 631
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v3, v4}, Landroid/net/wifi/WifiManager;->setDeviceDiscoveryEnabled(ZZ)Z

    .line 633
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1, v3}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 634
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDirectSettings;->updateConnectionStatus()V

    .line 635
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mScanner:Lcom/android/settings/wifi/WifiDirectSettings$Scanner;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->resume()V

    .line 636
    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mEnablingDirect:Z

    .line 646
    .end local v0           #directConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_0
    :goto_0
    return-void

    .line 638
    :cond_1
    if-ne p1, v3, :cond_2

    .line 639
    const-string v1, "WifiDirectSettings"

    const-string v1, "updateWifiState(), WIFI_STATE_DISABLED"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDirectEnabler:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 641
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiManager;->setWifiDirectSetting(Z)Z

    goto :goto_0

    .line 643
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mScanner:Lcom/android/settings/wifi/WifiDirectSettings$Scanner;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->pause()V

    .line 644
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1}, Lcom/android/settings/ProgressCategory;->removeAll()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v6, "WifiDirectSettings"

    const-string v5, " )"

    .line 475
    const/4 v0, -0x3

    if-ne p2, v0, :cond_2

    .line 476
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mSelected:Lcom/android/settings/wifi/WifiDirectPreference;

    if-eqz v0, :cond_1

    .line 477
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mSelected:Lcom/android/settings/wifi/WifiDirectPreference;

    iget-object v1, v1, Lcom/android/settings/wifi/WifiDirectPreference;->bssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disconnectWifiDirectPeer(Ljava/lang/String;)Z

    .line 478
    const-string v0, "WifiDirectSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWifiManager.disconnectWifiDirectPeer( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mSelected:Lcom/android/settings/wifi/WifiDirectPreference;

    iget-object v1, v1, Lcom/android/settings/wifi/WifiDirectPreference;->bssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 483
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3, v3}, Landroid/net/wifi/WifiManager;->setDeviceDiscoveryEnabled(ZZ)Z

    .line 484
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v4, v3}, Landroid/net/wifi/WifiManager;->setDeviceDiscoveryEnabled(ZZ)Z

    .line 510
    :cond_0
    :goto_1
    return-void

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disconnectWifiDirectPeer(Ljava/lang/String;)Z

    goto :goto_0

    .line 485
    :cond_2
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDialog:Lcom/android/settings/wifi/WifiDirectDialog;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mSelected:Lcom/android/settings/wifi/WifiDirectPreference;

    if-eqz v0, :cond_3

    .line 487
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mSelected:Lcom/android/settings/wifi/WifiDirectPreference;

    iget-object v2, v2, Lcom/android/settings/wifi/WifiDirectPreference;->bssid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->sendProvisionRequest(ILjava/lang/String;)Z

    .line 488
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 489
    const-class v1, Lcom/android/settings/wifi/WifiDirectProgressDialog;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 491
    const-string v1, "dev_address"

    iget-object v2, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mSelected:Lcom/android/settings/wifi/WifiDirectPreference;

    iget-object v2, v2, Lcom/android/settings/wifi/WifiDirectPreference;->bssid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiDirectSettings;->startActivity(Landroid/content/Intent;)V

    .line 493
    const-string v0, "WifiDirectSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWifiManager.sendProvisionRequest( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mSelected:Lcom/android/settings/wifi/WifiDirectPreference;

    iget-object v1, v1, Lcom/android/settings/wifi/WifiDirectPreference;->bssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 494
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDialog:Lcom/android/settings/wifi/WifiDirectDialog;

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiDirectDialog;->edit:Z

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDialog:Lcom/android/settings/wifi/WifiDirectDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDirectDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 496
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDirectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_ssid"

    iget-object v2, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 497
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDirectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_password"

    iget-object v2, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 499
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mConfigureNetwork:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isDirectInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiDirectSSID(Ljava/lang/String;)I

    .line 502
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiDirectPassword(Ljava/lang/String;)I

    .line 503
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isDirectConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3, v3}, Landroid/net/wifi/WifiManager;->setDeviceDiscoveryEnabled(ZZ)Z

    .line 505
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v4, v3}, Landroid/net/wifi/WifiManager;->setDeviceDiscoveryEnabled(ZZ)Z

    goto/16 :goto_1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mSelected:Lcom/android/settings/wifi/WifiDirectPreference;

    if-nez v0, :cond_0

    .line 400
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 402
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "direct_ssid"

    .line 132
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDirectSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 135
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "AUTO_FINISH"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiDirectSettings;->autoFinish:Z

    .line 137
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiDirectSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 139
    const v3, 0x7f040037

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiDirectSettings;->addPreferencesFromResource(I)V

    .line 141
    const-string v3, "enable_direct"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiDirectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDirectEnabler:Landroid/preference/CheckBoxPreference;

    .line 142
    const-string v3, "direct_status"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiDirectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mStatus:Landroid/preference/Preference;

    .line 143
    const-string v3, "direct_ssid_and_password"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiDirectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mConfigureNetwork:Landroid/preference/Preference;

    .line 144
    const-string v3, "direct_disconnect"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiDirectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDisconnectDirect:Landroid/preference/Preference;

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDirectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "direct_ssid"

    invoke-static {v3, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, str:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDirectSettings;->generateDefaultSSID()Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDirectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "direct_ssid"

    invoke-static {v3, v7, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 151
    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mConfigureNetwork:Landroid/preference/Preference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 153
    const-string v3, "access_points"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiDirectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/ProgressCategory;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    .line 154
    iget-object v3, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v3, v5}, Lcom/android/settings/ProgressCategory;->setOrderingAsAdded(Z)V

    .line 156
    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiDirectSettings;->autoFinish:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isDirectInitialized()Z

    move-result v3

    if-nez v3, :cond_1

    .line 157
    iput-boolean v6, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mEnablingDirect:Z

    .line 160
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDirectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "direct_not_show_again"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 161
    .local v1, showNotify:I
    if-nez v1, :cond_2

    .line 162
    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiDirectSettings;->showDialog(I)V

    .line 165
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDirectSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiDirectSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 167
    const-string v3, "WifiDirectSettings"

    const-string v4, "onCreate() finish"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .parameter "menu"
    .parameter "view"
    .parameter "info"

    .prologue
    .line 281
    instance-of v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDirectSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3
    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/preference/Preference;

    .line 285
    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 13
    .parameter "id"

    .prologue
    const v12, 0x7f0801a0

    const v11, 0x7f08017e

    const v10, 0x1080027

    const/4 v9, 0x0

    const v8, 0x7f08038b

    .line 289
    const-string v5, "WifiDirectSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreateDialog id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    packed-switch p1, :pswitch_data_0

    move-object v5, v9

    .line 394
    :goto_0
    return-object v5

    .line 292
    :pswitch_0
    iget-object v5, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mNotifyDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_0

    move-object v5, v9

    .line 293
    goto :goto_0

    .line 295
    :cond_0
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiDirectSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 296
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030067

    invoke-virtual {v2, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 298
    .local v1, discover_notify:Landroid/widget/LinearLayout;
    const v5, 0x7f0b0150

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 301
    .local v4, notify_confirm:Landroid/widget/LinearLayout;
    const v5, 0x7f0b0151

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 304
    .local v3, not_show_again:Landroid/widget/CheckBox;
    new-instance v5, Lcom/android/settings/wifi/WifiDirectSettings$2;

    invoke-direct {v5, p0, v3}, Lcom/android/settings/wifi/WifiDirectSettings$2;-><init>(Lcom/android/settings/wifi/WifiDirectSettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 313
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f080184

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 314
    const v5, 0x7f080185

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 315
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 316
    new-instance v5, Lcom/android/settings/wifi/WifiDirectSettings$3;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/WifiDirectSettings$3;-><init>(Lcom/android/settings/wifi/WifiDirectSettings;)V

    invoke-virtual {v0, v8, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 321
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mNotifyDialog:Landroid/app/AlertDialog;

    .line 322
    iget-object v5, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mNotifyDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 325
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v1           #discover_notify:Landroid/widget/LinearLayout;
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .end local v3           #not_show_again:Landroid/widget/CheckBox;
    .end local v4           #notify_confirm:Landroid/widget/LinearLayout;
    :pswitch_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v10}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f080173

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {p0, v12}, Lcom/android/settings/wifi/WifiDirectSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/settings/wifi/WifiDirectSettings$6;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/WifiDirectSettings$6;-><init>(Lcom/android/settings/wifi/WifiDirectSettings;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/WifiDirectSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/settings/wifi/WifiDirectSettings$5;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/WifiDirectSettings$5;-><init>(Lcom/android/settings/wifi/WifiDirectSettings;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/settings/wifi/WifiDirectSettings$4;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/WifiDirectSettings$4;-><init>(Lcom/android/settings/wifi/WifiDirectSettings;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto/16 :goto_0

    .line 371
    :pswitch_2
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v10}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f080181

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {p0, v12}, Lcom/android/settings/wifi/WifiDirectSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/settings/wifi/WifiDirectSettings$8;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/WifiDirectSettings$8;-><init>(Lcom/android/settings/wifi/WifiDirectSettings;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/WifiDirectSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/settings/wifi/WifiDirectSettings$7;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/WifiDirectSettings$7;-><init>(Lcom/android/settings/wifi/WifiDirectSettings;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto/16 :goto_0

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 246
    const/4 v0, 0x1

    const v1, 0x7f080162

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 248
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 240
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 241
    const-string v0, "WifiDirectSettings"

    const-string v1, "onDestroy() finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDialog:Lcom/android/settings/wifi/WifiDirectDialog;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    const-string v0, "WifiDirectSettings"

    const-string v1, "onDismiss(), dismiss mDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDialog:Lcom/android/settings/wifi/WifiDirectDialog;

    .line 528
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 261
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 276
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 263
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mScanner:Lcom/android/settings/wifi/WifiDirectSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->resume()V

    .line 265
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 267
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isDirectConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1, v1}, Landroid/net/wifi/WifiManager;->setDeviceDiscoveryEnabled(ZZ)Z

    .line 270
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2, v1}, Landroid/net/wifi/WifiManager;->setDeviceDiscoveryEnabled(ZZ)Z

    :cond_0
    move v0, v2

    .line 274
    goto :goto_0

    .line 261
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 216
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 217
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiDirectSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 218
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mScanner:Lcom/android/settings/wifi/WifiDirectSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->pause()V

    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mEnablingDirect:Z

    .line 220
    const-string v0, "WifiDirectSettings"

    const-string v1, "onPause() finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 13
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v8, 0x3

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    const-string v7, "WifiDirectSettings"

    .line 407
    instance-of v6, p2, Lcom/android/settings/wifi/WifiDirectPreference;

    if-eqz v6, :cond_0

    .line 408
    check-cast p2, Lcom/android/settings/wifi/WifiDirectPreference;

    .end local p2
    iput-object p2, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mSelected:Lcom/android/settings/wifi/WifiDirectPreference;

    .line 409
    const-string v6, "WifiDirectSettings"

    const-string v6, "show Direct Dialog"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mSelected:Lcom/android/settings/wifi/WifiDirectPreference;

    invoke-direct {p0, v6, v11, v12}, Lcom/android/settings/wifi/WifiDirectSettings;->showDialog(Lcom/android/settings/wifi/WifiDirectPreference;ZLandroid/net/wifi/WifiConfiguration;)V

    :goto_0
    move v6, v10

    .line 470
    :goto_1
    return v6

    .line 411
    .restart local p2
    :cond_0
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDirectEnabler:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 412
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 414
    .local v0, directConfig:Landroid/net/wifi/WifiConfiguration;
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDirectEnabler:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-ne v6, v10, :cond_4

    .line 415
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDisconnectDirect:Landroid/preference/Preference;

    invoke-virtual {v6, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 418
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v5

    .line 419
    .local v5, wifiApState:I
    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    if-ne v5, v8, :cond_2

    .line 421
    :cond_1
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v12, v11}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 424
    :cond_2
    const-string v6, "WifiDirectSettings"

    const-string v6, "mWifiManager.setWifiDirectEnabled(true)"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v6

    if-nez v6, :cond_3

    .line 426
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v10}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 427
    iput-boolean v10, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mEnablingDirect:Z

    goto :goto_0

    .line 429
    :cond_3
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v10}, Landroid/net/wifi/WifiManager;->setWifiDirectSetting(Z)Z

    .line 430
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/16 v7, 0x8

    invoke-virtual {v6, v10, v0, v7}, Landroid/net/wifi/WifiManager;->setWifiDirectEnabled(ZLandroid/net/wifi/WifiConfiguration;I)Z

    .line 431
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v10, v11}, Landroid/net/wifi/WifiManager;->setDeviceDiscoveryEnabled(ZZ)Z

    .line 433
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v6, v10}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 434
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDirectSettings;->updateConnectionStatus()V

    .line 435
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mScanner:Lcom/android/settings/wifi/WifiDirectSettings$Scanner;

    invoke-virtual {v6}, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->resume()V

    goto :goto_0

    .line 441
    .end local v5           #wifiApState:I
    :cond_4
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v11}, Landroid/net/wifi/WifiManager;->setWifiDirectSetting(Z)Z

    .line 442
    const-string v6, "WifiDirectSettings"

    const-string v6, "mWifiManager.setWifiDirectEnabled(false)"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/16 v7, 0x8

    invoke-virtual {v6, v11, v0, v7}, Landroid/net/wifi/WifiManager;->setWifiDirectEnabled(ZLandroid/net/wifi/WifiConfiguration;I)Z

    .line 444
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v11}, Landroid/net/wifi/WifiManager;->setWifiDirectSetting(Z)Z

    .line 445
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v6, v11}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 446
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v6}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 447
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mScanner:Lcom/android/settings/wifi/WifiDirectSettings$Scanner;

    invoke-virtual {v6}, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->pause()V

    .line 448
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDirectSettings;->updateConnectionStatus()V

    goto/16 :goto_0

    .line 450
    .end local v0           #directConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_5
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mConfigureNetwork:Landroid/preference/Preference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 451
    const-string v6, "WifiDirectSettings"

    const-string v6, "preference == mConfigureNetwork"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iput-object v12, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mSelected:Lcom/android/settings/wifi/WifiDirectPreference;

    .line 453
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDirectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "direct_ssid"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 454
    .local v2, name:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDirectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "direct_password"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 456
    .local v3, password:Ljava/lang/String;
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 458
    .local v1, mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 459
    new-instance v4, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Random;-><init>(J)V

    .line 460
    .local v4, rnd:Ljava/util/Random;
    const-string v6, "%08d"

    new-array v7, v10, [Ljava/lang/Object;

    const v8, 0x55d2370

    invoke-virtual {v4, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    const v9, 0x989680

    add-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 462
    .end local v4           #rnd:Ljava/util/Random;
    :cond_6
    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 463
    iput-object v3, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 464
    invoke-direct {p0, v12, v10, v1}, Lcom/android/settings/wifi/WifiDirectSettings;->showDialog(Lcom/android/settings/wifi/WifiDirectPreference;ZLandroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0

    .line 465
    .end local v1           #mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #password:Ljava/lang/String;
    :cond_7
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDisconnectDirect:Landroid/preference/Preference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 466
    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/WifiDirectSettings;->showDialog(I)V

    goto/16 :goto_0

    .line 468
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    goto/16 :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 253
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 254
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDirectEnabler:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 256
    return v2

    .line 254
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v5, "WifiDirectSettings"

    .line 172
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 174
    const-string v1, "WifiDirectSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiDirectSettings;->autoFinish:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isDirectConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->autoFinish:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isGcCreated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDirectSettings;->finish()V

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1, v2}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 181
    .local v0, isWifiConnected:Z
    if-eqz v0, :cond_2

    .line 182
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiDirectSettings;->showDialog(I)V

    .line 183
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mNotifyDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 184
    const-string v1, "WifiDirectSettings"

    const-string v1, "mAlertDialg is not null"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mNotifyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 186
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mNotifyDialog:Landroid/app/AlertDialog;

    .line 187
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiDirectSettings;->showDialog(I)V

    .line 209
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/WifiDirectSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 211
    const-string v1, "WifiDirectSettings"

    const-string v1, "onResume() finish"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-void

    .line 190
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiManager;->setSupplicantAutoScan(Z)Z

    .line 193
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isDirectInitialized()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 194
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDirectEnabler:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 195
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isDirectConnected()Z

    move-result v1

    if-nez v1, :cond_3

    .line 196
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v3, v4}, Landroid/net/wifi/WifiManager;->setDeviceDiscoveryEnabled(ZZ)Z

    .line 199
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1, v3}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 200
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mScanner:Lcom/android/settings/wifi/WifiDirectSettings$Scanner;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->resume()V

    .line 201
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDirectSettings;->updateConnectionStatus()V

    goto :goto_0

    .line 203
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDirectEnabler:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 204
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 205
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mStatus:Landroid/preference/Preference;

    const v2, 0x7f08017d

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const-string v3, "WifiDirectSettings"

    .line 225
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 226
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isDirectConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setSupplicantAutoScan(Z)Z

    .line 230
    :cond_0
    const-string v0, "WifiDirectSettings"

    const-string v0, "onStop() Stop Direct Device Discovery"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setDeviceDiscoveryEnabled(ZZ)Z

    .line 233
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScanActive()Z

    .line 235
    const-string v0, "WifiDirectSettings"

    const-string v0, "onStop() finish"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void
.end method

.class public abstract Landroid/net/wifi/IWifiManager$Stub;
.super Landroid/os/Binder;
.source "IWifiManager.java"

# interfaces
.implements Landroid/net/wifi/IWifiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IWifiManager"

.field static final TRANSACTION_acquireMulticastLock:I = 0x28

.field static final TRANSACTION_acquireWifiLock:I = 0x23

.field static final TRANSACTION_addOrUpdateNetwork:I = 0x2

.field static final TRANSACTION_configureDirectPeerInterface:I = 0x44

.field static final TRANSACTION_connectPeerWithProvision:I = 0x2f

.field static final TRANSACTION_connectToP2PNetwork:I = 0x2e

.field static final TRANSACTION_disableNetwork:I = 0x5

.field static final TRANSACTION_disconnect:I = 0x9

.field static final TRANSACTION_disconnectWifiDirectPeer:I = 0x38

.field static final TRANSACTION_enableNetwork:I = 0x4

.field static final TRANSACTION_getConfiguredNetworks:I = 0x1

.field static final TRANSACTION_getConnectionInfo:I = 0xf

.field static final TRANSACTION_getDeviceInfoLists:I = 0x35

.field static final TRANSACTION_getDhcpInfo:I = 0x22

.field static final TRANSACTION_getDirectWpsPin:I = 0x36

.field static final TRANSACTION_getNumAllowedChannels:I = 0x1e

.field static final TRANSACTION_getP2PScanResults:I = 0x32

.field static final TRANSACTION_getPER:I = 0x15

.field static final TRANSACTION_getRoamDelta:I = 0x19

.field static final TRANSACTION_getRoamScanPeriod:I = 0x1b

.field static final TRANSACTION_getRoamTrigger:I = 0x17

.field static final TRANSACTION_getScanResults:I = 0x8

.field static final TRANSACTION_getValidChannelCounts:I = 0x20

.field static final TRANSACTION_getWifiApConfiguration:I = 0x2c

.field static final TRANSACTION_getWifiApEnabledState:I = 0x2b

.field static final TRANSACTION_getWifiDirectSetting:I = 0x40

.field static final TRANSACTION_getWifiEnabledState:I = 0x1d

.field static final TRANSACTION_initializeMulticastFiltering:I = 0x26

.field static final TRANSACTION_isDirectConnected:I = 0x3d

.field static final TRANSACTION_isDirectInitialized:I = 0x3a

.field static final TRANSACTION_isGOCreated:I = 0x3b

.field static final TRANSACTION_isGcCreated:I = 0x3c

.field static final TRANSACTION_isMulticastEnabled:I = 0x27

.field static final TRANSACTION_isShowingAccessPointListDialog:I = 0x13

.field static final TRANSACTION_pingSupplicant:I = 0x6

.field static final TRANSACTION_reassociate:I = 0xe

.field static final TRANSACTION_reconnect:I = 0xa

.field static final TRANSACTION_releaseMulticastLock:I = 0x29

.field static final TRANSACTION_releaseWifiLock:I = 0x25

.field static final TRANSACTION_removeNetwork:I = 0x3

.field static final TRANSACTION_saveConfiguration:I = 0x21

.field static final TRANSACTION_sendProvisionRequest:I = 0x30

.field static final TRANSACTION_sendProvisionResponse:I = 0x31

.field static final TRANSACTION_setDeviceDiscoveryEnabled:I = 0x34

.field static final TRANSACTION_setDirectAPEnabled:I = 0x39

.field static final TRANSACTION_setNumAllowedChannels:I = 0x1f

.field static final TRANSACTION_setRoamBand:I = 0x1c

.field static final TRANSACTION_setRoamDelta:I = 0x18

.field static final TRANSACTION_setRoamScanPeriod:I = 0x1a

.field static final TRANSACTION_setRoamTrigger:I = 0x16

.field static final TRANSACTION_setShowAccessPointListDialog:I = 0x14

.field static final TRANSACTION_setSupplicantAutoConn:I = 0x42

.field static final TRANSACTION_setSupplicantAutoScan:I = 0x43

.field static final TRANSACTION_setSupplicantHotspotAutoConn:I = 0x45

.field static final TRANSACTION_setWifiApConfiguration:I = 0x2d

.field static final TRANSACTION_setWifiApEnabled:I = 0x2a

.field static final TRANSACTION_setWifiDirectEnabled:I = 0x33

.field static final TRANSACTION_setWifiDirectPassword:I = 0x3f

.field static final TRANSACTION_setWifiDirectSSID:I = 0x3e

.field static final TRANSACTION_setWifiDirectSetting:I = 0x41

.field static final TRANSACTION_setWifiEnabled:I = 0x10

.field static final TRANSACTION_setWifiEnabledDialog:I = 0x12

.field static final TRANSACTION_shutdown:I = 0x11

.field static final TRANSACTION_startScan:I = 0x7

.field static final TRANSACTION_stopWifiDirectWps:I = 0x37

.field static final TRANSACTION_updateWifiLockWorkSource:I = 0x24

.field static final TRANSACTION_wpsCommandCancel:I = 0xd

.field static final TRANSACTION_wpsPbcConnect:I = 0xb

.field static final TRANSACTION_wpsPinConnect:I = 0xc


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.net.wifi.IWifiManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;
    .registers 3
    .parameter "obj"

    .prologue
    .line 28
    if-nez p0, :cond_4

    .line 29
    const/4 v1, 0x0

    .line 35
    :goto_3
    return-object v1

    .line 31
    :cond_4
    const-string v1, "android.net.wifi.IWifiManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/wifi/IWifiManager;

    if-eqz v1, :cond_14

    .line 33
    check-cast v0, Landroid/net/wifi/IWifiManager;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 35
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/net/wifi/IWifiManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/IWifiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x1

    const-string v9, "android.net.wifi.IWifiManager"

    .line 43
    sparse-switch p1, :sswitch_data_71e

    .line 746
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_b
    return v7

    .line 47
    :sswitch_c
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v7, v8

    .line 48
    goto :goto_b

    .line 52
    :sswitch_13
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v6

    .line 54
    .local v6, _result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move v7, v8

    .line 56
    goto :goto_b

    .line 60
    .end local v6           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :sswitch_24
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_43

    .line 63
    sget-object v7, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 68
    .local v0, _arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_37
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    .line 69
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 71
    goto :goto_b

    .line 66
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    .end local v4           #_result:I
    :cond_43
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_37

    .line 75
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :sswitch_45
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 78
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->removeNetwork(I)Z

    move-result v4

    .line 79
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    if-eqz v4, :cond_5d

    move v7, v8

    :goto_58
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 81
    goto :goto_b

    :cond_5d
    move v7, v10

    .line 80
    goto :goto_58

    .line 85
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_5f
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 89
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_7e

    move v1, v8

    .line 90
    .local v1, _arg1:Z
    :goto_6f
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableNetwork(IZ)Z

    move-result v4

    .line 91
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v4, :cond_80

    move v7, v8

    :goto_79
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 93
    goto :goto_b

    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :cond_7e
    move v1, v10

    .line 89
    goto :goto_6f

    .restart local v1       #_arg1:Z
    .restart local v4       #_result:Z
    :cond_80
    move v7, v10

    .line 92
    goto :goto_79

    .line 97
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :sswitch_82
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 100
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->disableNetwork(I)Z

    move-result v4

    .line 101
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    if-eqz v4, :cond_9b

    move v7, v8

    :goto_95
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 103
    goto/16 :goto_b

    :cond_9b
    move v7, v10

    .line 102
    goto :goto_95

    .line 107
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_9d
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->pingSupplicant()Z

    move-result v4

    .line 109
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    if-eqz v4, :cond_b2

    move v7, v8

    :goto_ac
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 111
    goto/16 :goto_b

    :cond_b2
    move v7, v10

    .line 110
    goto :goto_ac

    .line 115
    .end local v4           #_result:Z
    :sswitch_b4
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_c9

    move v0, v8

    .line 118
    .local v0, _arg0:Z
    :goto_c0
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->startScan(Z)V

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 120
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    :cond_c9
    move v0, v10

    .line 117
    goto :goto_c0

    .line 124
    :sswitch_cb
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getScanResults()Ljava/util/List;

    move-result-object v5

    .line 126
    .local v5, _result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move v7, v8

    .line 128
    goto/16 :goto_b

    .line 132
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :sswitch_dd
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->disconnect()Z

    move-result v4

    .line 134
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    if-eqz v4, :cond_f2

    move v7, v8

    :goto_ec
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 136
    goto/16 :goto_b

    :cond_f2
    move v7, v10

    .line 135
    goto :goto_ec

    .line 140
    .end local v4           #_result:Z
    :sswitch_f4
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->reconnect()Z

    move-result v4

    .line 142
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    if-eqz v4, :cond_109

    move v7, v8

    :goto_103
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 144
    goto/16 :goto_b

    :cond_109
    move v7, v10

    .line 143
    goto :goto_103

    .line 148
    .end local v4           #_result:Z
    :sswitch_10b
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->wpsPbcConnect()Z

    move-result v4

    .line 150
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    if-eqz v4, :cond_120

    move v7, v8

    :goto_11a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 152
    goto/16 :goto_b

    :cond_120
    move v7, v10

    .line 151
    goto :goto_11a

    .line 156
    .end local v4           #_result:Z
    :sswitch_122
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->wpsPinConnect(Ljava/lang/String;)I

    move-result v4

    .line 160
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 162
    goto/16 :goto_b

    .line 166
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:I
    :sswitch_138
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->wpsCommandCancel()Z

    move-result v4

    .line 168
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    if-eqz v4, :cond_14d

    move v7, v8

    :goto_147
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 170
    goto/16 :goto_b

    :cond_14d
    move v7, v10

    .line 169
    goto :goto_147

    .line 174
    .end local v4           #_result:Z
    :sswitch_14f
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->reassociate()Z

    move-result v4

    .line 176
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    if-eqz v4, :cond_164

    move v7, v8

    :goto_15e
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 178
    goto/16 :goto_b

    :cond_164
    move v7, v10

    .line 177
    goto :goto_15e

    .line 182
    .end local v4           #_result:Z
    :sswitch_166
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 184
    .local v4, _result:Landroid/net/wifi/WifiInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    if-eqz v4, :cond_17d

    .line 186
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    invoke-virtual {v4, p3, v8}, Landroid/net/wifi/WifiInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_17a
    move v7, v8

    .line 192
    goto/16 :goto_b

    .line 190
    :cond_17d
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17a

    .line 196
    .end local v4           #_result:Landroid/net/wifi/WifiInfo;
    :sswitch_181
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_19d

    move v0, v8

    .line 199
    .local v0, _arg0:Z
    :goto_18d
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnabled(Z)Z

    move-result v4

    .line 200
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    if-eqz v4, :cond_19f

    move v7, v8

    :goto_197
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 202
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_19d
    move v0, v10

    .line 198
    goto :goto_18d

    .restart local v0       #_arg0:Z
    .restart local v4       #_result:Z
    :cond_19f
    move v7, v10

    .line 201
    goto :goto_197

    .line 206
    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :sswitch_1a1
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->shutdown()Z

    move-result v4

    .line 208
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    if-eqz v4, :cond_1b6

    move v7, v8

    :goto_1b0
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 210
    goto/16 :goto_b

    :cond_1b6
    move v7, v10

    .line 209
    goto :goto_1b0

    .line 214
    .end local v4           #_result:Z
    :sswitch_1b8
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1d4

    move v0, v8

    .line 217
    .restart local v0       #_arg0:Z
    :goto_1c4
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnabledDialog(Z)Z

    move-result v4

    .line 218
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    if-eqz v4, :cond_1d6

    move v7, v8

    :goto_1ce
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 220
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_1d4
    move v0, v10

    .line 216
    goto :goto_1c4

    .restart local v0       #_arg0:Z
    .restart local v4       #_result:Z
    :cond_1d6
    move v7, v10

    .line 219
    goto :goto_1ce

    .line 224
    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :sswitch_1d8
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isShowingAccessPointListDialog()Z

    move-result v4

    .line 226
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    if-eqz v4, :cond_1ed

    move v7, v8

    :goto_1e7
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 228
    goto/16 :goto_b

    :cond_1ed
    move v7, v10

    .line 227
    goto :goto_1e7

    .line 232
    .end local v4           #_result:Z
    :sswitch_1ef
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_20b

    move v0, v8

    .line 235
    .restart local v0       #_arg0:Z
    :goto_1fb
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setShowAccessPointListDialog(Z)Z

    move-result v4

    .line 236
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    if-eqz v4, :cond_20d

    move v7, v8

    :goto_205
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 238
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_20b
    move v0, v10

    .line 234
    goto :goto_1fb

    .restart local v0       #_arg0:Z
    .restart local v4       #_result:Z
    :cond_20d
    move v7, v10

    .line 237
    goto :goto_205

    .line 242
    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :sswitch_20f
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getPER()I

    move-result v4

    .line 244
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 246
    goto/16 :goto_b

    .line 250
    .end local v4           #_result:I
    :sswitch_221
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 253
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setRoamTrigger(I)Z

    move-result v4

    .line 254
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    if-eqz v4, :cond_23a

    move v7, v8

    :goto_234
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 256
    goto/16 :goto_b

    :cond_23a
    move v7, v10

    .line 255
    goto :goto_234

    .line 260
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_23c
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getRoamTrigger()I

    move-result v4

    .line 262
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 264
    goto/16 :goto_b

    .line 268
    .end local v4           #_result:I
    :sswitch_24e
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 271
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setRoamDelta(I)Z

    move-result v4

    .line 272
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    if-eqz v4, :cond_267

    move v7, v8

    :goto_261
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 274
    goto/16 :goto_b

    :cond_267
    move v7, v10

    .line 273
    goto :goto_261

    .line 278
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_269
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getRoamDelta()I

    move-result v4

    .line 280
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 282
    goto/16 :goto_b

    .line 286
    .end local v4           #_result:I
    :sswitch_27b
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 289
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setRoamScanPeriod(I)Z

    move-result v4

    .line 290
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    if-eqz v4, :cond_294

    move v7, v8

    :goto_28e
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 292
    goto/16 :goto_b

    :cond_294
    move v7, v10

    .line 291
    goto :goto_28e

    .line 296
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_296
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getRoamScanPeriod()I

    move-result v4

    .line 298
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 300
    goto/16 :goto_b

    .line 304
    .end local v4           #_result:I
    :sswitch_2a8
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 307
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setRoamBand(I)Z

    move-result v4

    .line 308
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    if-eqz v4, :cond_2c1

    move v7, v8

    :goto_2bb
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 310
    goto/16 :goto_b

    :cond_2c1
    move v7, v10

    .line 309
    goto :goto_2bb

    .line 314
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_2c3
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiEnabledState()I

    move-result v4

    .line 316
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 318
    goto/16 :goto_b

    .line 322
    .end local v4           #_result:I
    :sswitch_2d5
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getNumAllowedChannels()I

    move-result v4

    .line 324
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 326
    goto/16 :goto_b

    .line 330
    .end local v4           #_result:I
    :sswitch_2e7
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 334
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_307

    move v1, v8

    .line 335
    .restart local v1       #_arg1:Z
    :goto_2f7
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setNumAllowedChannels(IZ)Z

    move-result v4

    .line 336
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    if-eqz v4, :cond_309

    move v7, v8

    :goto_301
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 338
    goto/16 :goto_b

    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :cond_307
    move v1, v10

    .line 334
    goto :goto_2f7

    .restart local v1       #_arg1:Z
    .restart local v4       #_result:Z
    :cond_309
    move v7, v10

    .line 337
    goto :goto_301

    .line 342
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :sswitch_30b
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getValidChannelCounts()[I

    move-result-object v4

    .line 344
    .local v4, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    move v7, v8

    .line 346
    goto/16 :goto_b

    .line 350
    .end local v4           #_result:[I
    :sswitch_31d
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->saveConfiguration()Z

    move-result v4

    .line 352
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    if-eqz v4, :cond_332

    move v7, v8

    :goto_32c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 354
    goto/16 :goto_b

    :cond_332
    move v7, v10

    .line 353
    goto :goto_32c

    .line 358
    .end local v4           #_result:Z
    :sswitch_334
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v4

    .line 360
    .local v4, _result:Landroid/net/DhcpInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    if-eqz v4, :cond_34b

    .line 362
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    invoke-virtual {v4, p3, v8}, Landroid/net/DhcpInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_348
    move v7, v8

    .line 368
    goto/16 :goto_b

    .line 366
    :cond_34b
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_348

    .line 372
    .end local v4           #_result:Landroid/net/DhcpInfo;
    :sswitch_34f
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 376
    .local v0, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 378
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 380
    .local v2, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_37e

    .line 381
    sget-object v7, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/WorkSource;

    .line 386
    .local v3, _arg3:Landroid/os/WorkSource;
    :goto_36e
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z

    move-result v4

    .line 387
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    if-eqz v4, :cond_380

    move v7, v8

    :goto_378
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 389
    goto/16 :goto_b

    .line 384
    .end local v3           #_arg3:Landroid/os/WorkSource;
    .end local v4           #_result:Z
    :cond_37e
    const/4 v3, 0x0

    .restart local v3       #_arg3:Landroid/os/WorkSource;
    goto :goto_36e

    .restart local v4       #_result:Z
    :cond_380
    move v7, v10

    .line 388
    goto :goto_378

    .line 393
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v1           #_arg1:I
    .end local v2           #_arg2:Ljava/lang/String;
    .end local v3           #_arg3:Landroid/os/WorkSource;
    .end local v4           #_result:Z
    :sswitch_382
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 397
    .restart local v0       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3a2

    .line 398
    sget-object v7, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 403
    .local v1, _arg1:Landroid/os/WorkSource;
    :goto_399
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 404
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 405
    goto/16 :goto_b

    .line 401
    .end local v1           #_arg1:Landroid/os/WorkSource;
    :cond_3a2
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/os/WorkSource;
    goto :goto_399

    .line 409
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v1           #_arg1:Landroid/os/WorkSource;
    :sswitch_3a4
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 412
    .restart local v0       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->releaseWifiLock(Landroid/os/IBinder;)Z

    move-result v4

    .line 413
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    if-eqz v4, :cond_3bd

    move v7, v8

    :goto_3b7
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 415
    goto/16 :goto_b

    :cond_3bd
    move v7, v10

    .line 414
    goto :goto_3b7

    .line 419
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v4           #_result:Z
    :sswitch_3bf
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->initializeMulticastFiltering()V

    .line 421
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 422
    goto/16 :goto_b

    .line 426
    :sswitch_3cd
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isMulticastEnabled()Z

    move-result v4

    .line 428
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    if-eqz v4, :cond_3e2

    move v7, v8

    :goto_3dc
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 430
    goto/16 :goto_b

    :cond_3e2
    move v7, v10

    .line 429
    goto :goto_3dc

    .line 434
    .end local v4           #_result:Z
    :sswitch_3e4
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 438
    .restart local v0       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 439
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 440
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 441
    goto/16 :goto_b

    .line 445
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_3fa
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->releaseMulticastLock()V

    .line 447
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 448
    goto/16 :goto_b

    .line 452
    :sswitch_408
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_432

    .line 455
    sget-object v7, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 461
    .local v0, _arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_41b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_434

    move v1, v8

    .line 462
    .local v1, _arg1:Z
    :goto_422
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v4

    .line 463
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    if-eqz v4, :cond_436

    move v7, v8

    :goto_42c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 465
    goto/16 :goto_b

    .line 458
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :cond_432
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_41b

    :cond_434
    move v1, v10

    .line 461
    goto :goto_422

    .restart local v1       #_arg1:Z
    .restart local v4       #_result:Z
    :cond_436
    move v7, v10

    .line 464
    goto :goto_42c

    .line 469
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :sswitch_438
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApEnabledState()I

    move-result v4

    .line 471
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 473
    goto/16 :goto_b

    .line 477
    .end local v4           #_result:I
    :sswitch_44a
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 479
    .local v4, _result:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    if-eqz v4, :cond_461

    .line 481
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    invoke-virtual {v4, p3, v8}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_45e
    move v7, v8

    .line 487
    goto/16 :goto_b

    .line 485
    :cond_461
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_45e

    .line 491
    .end local v4           #_result:Landroid/net/wifi/WifiConfiguration;
    :sswitch_465
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_481

    .line 494
    sget-object v7, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 499
    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_478
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 500
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 501
    goto/16 :goto_b

    .line 497
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :cond_481
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_478

    .line 505
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :sswitch_483
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 508
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->connectToP2PNetwork(Ljava/lang/String;)Z

    move-result v4

    .line 509
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    if-eqz v4, :cond_49c

    move v7, v8

    :goto_496
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 511
    goto/16 :goto_b

    :cond_49c
    move v7, v10

    .line 510
    goto :goto_496

    .line 515
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_49e
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 519
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 520
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->connectPeerWithProvision(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 521
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    if-eqz v4, :cond_4bb

    move v7, v8

    :goto_4b5
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 523
    goto/16 :goto_b

    :cond_4bb
    move v7, v10

    .line 522
    goto :goto_4b5

    .line 527
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_4bd
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 529
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 531
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 532
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->sendProvisionRequest(ILjava/lang/String;)Z

    move-result v4

    .line 533
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    if-eqz v4, :cond_4da

    move v7, v8

    :goto_4d4
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 535
    goto/16 :goto_b

    :cond_4da
    move v7, v10

    .line 534
    goto :goto_4d4

    .line 539
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_4dc
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 541
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 543
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 545
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 546
    .restart local v2       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->sendProvisionResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 547
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    if-eqz v4, :cond_4fd

    move v7, v8

    :goto_4f7
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 549
    goto/16 :goto_b

    :cond_4fd
    move v7, v10

    .line 548
    goto :goto_4f7

    .line 553
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_4ff
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getP2PScanResults()Ljava/util/List;

    move-result-object v5

    .line 555
    .restart local v5       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move v7, v8

    .line 557
    goto/16 :goto_b

    .line 561
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :sswitch_511
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_53f

    move v0, v8

    .line 565
    .local v0, _arg0:Z
    :goto_51d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_541

    .line 566
    sget-object v7, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 572
    .local v1, _arg1:Landroid/net/wifi/WifiConfiguration;
    :goto_52b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 573
    .local v2, _arg2:I
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->setWifiDirectEnabled(ZLandroid/net/wifi/WifiConfiguration;I)Z

    move-result v4

    .line 574
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 575
    if-eqz v4, :cond_543

    move v7, v8

    :goto_539
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 576
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    .end local v1           #_arg1:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #_arg2:I
    .end local v4           #_result:Z
    :cond_53f
    move v0, v10

    .line 563
    goto :goto_51d

    .line 569
    .restart local v0       #_arg0:Z
    :cond_541
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/net/wifi/WifiConfiguration;
    goto :goto_52b

    .restart local v2       #_arg2:I
    .restart local v4       #_result:Z
    :cond_543
    move v7, v10

    .line 575
    goto :goto_539

    .line 580
    .end local v0           #_arg0:Z
    .end local v1           #_arg1:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #_arg2:I
    .end local v4           #_result:Z
    :sswitch_545
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_568

    move v0, v8

    .line 584
    .restart local v0       #_arg0:Z
    :goto_551
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_56a

    move v1, v8

    .line 585
    .local v1, _arg1:Z
    :goto_558
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setDeviceDiscoveryEnabled(ZZ)Z

    move-result v4

    .line 586
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    if-eqz v4, :cond_56c

    move v7, v8

    :goto_562
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 588
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :cond_568
    move v0, v10

    .line 582
    goto :goto_551

    .restart local v0       #_arg0:Z
    :cond_56a
    move v1, v10

    .line 584
    goto :goto_558

    .restart local v1       #_arg1:Z
    .restart local v4       #_result:Z
    :cond_56c
    move v7, v10

    .line 587
    goto :goto_562

    .line 592
    .end local v0           #_arg0:Z
    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :sswitch_56e
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 593
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getDeviceInfoLists()Ljava/lang/String;

    move-result-object v4

    .line 594
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v7, v8

    .line 596
    goto/16 :goto_b

    .line 600
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_580
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 601
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getDirectWpsPin()Ljava/lang/String;

    move-result-object v4

    .line 602
    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v7, v8

    .line 604
    goto/16 :goto_b

    .line 608
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_592
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 609
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->stopWifiDirectWps()Z

    move-result v4

    .line 610
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    if-eqz v4, :cond_5a7

    move v7, v8

    :goto_5a1
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 612
    goto/16 :goto_b

    :cond_5a7
    move v7, v10

    .line 611
    goto :goto_5a1

    .line 616
    .end local v4           #_result:Z
    :sswitch_5a9
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 618
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 619
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->disconnectWifiDirectPeer(Ljava/lang/String;)Z

    move-result v4

    .line 620
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    if-eqz v4, :cond_5c2

    move v7, v8

    :goto_5bc
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 622
    goto/16 :goto_b

    :cond_5c2
    move v7, v10

    .line 621
    goto :goto_5bc

    .line 626
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_5c4
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_5e4

    move v0, v8

    .line 630
    .local v0, _arg0:Z
    :goto_5d0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 631
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setDirectAPEnabled(ZLjava/lang/String;)Z

    move-result v4

    .line 632
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    if-eqz v4, :cond_5e6

    move v7, v8

    :goto_5de
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 634
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Z
    :cond_5e4
    move v0, v10

    .line 628
    goto :goto_5d0

    .restart local v0       #_arg0:Z
    .restart local v1       #_arg1:Ljava/lang/String;
    .restart local v4       #_result:Z
    :cond_5e6
    move v7, v10

    .line 633
    goto :goto_5de

    .line 638
    .end local v0           #_arg0:Z
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_5e8
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 639
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isDirectInitialized()Z

    move-result v4

    .line 640
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    if-eqz v4, :cond_5fd

    move v7, v8

    :goto_5f7
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 642
    goto/16 :goto_b

    :cond_5fd
    move v7, v10

    .line 641
    goto :goto_5f7

    .line 646
    .end local v4           #_result:Z
    :sswitch_5ff
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 647
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isGOCreated()Z

    move-result v4

    .line 648
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 649
    if-eqz v4, :cond_614

    move v7, v8

    :goto_60e
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 650
    goto/16 :goto_b

    :cond_614
    move v7, v10

    .line 649
    goto :goto_60e

    .line 654
    .end local v4           #_result:Z
    :sswitch_616
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 655
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isGcCreated()Z

    move-result v4

    .line 656
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 657
    if-eqz v4, :cond_62b

    move v7, v8

    :goto_625
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 658
    goto/16 :goto_b

    :cond_62b
    move v7, v10

    .line 657
    goto :goto_625

    .line 662
    .end local v4           #_result:Z
    :sswitch_62d
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 663
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isDirectConnected()Z

    move-result v4

    .line 664
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 665
    if-eqz v4, :cond_642

    move v7, v8

    :goto_63c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 666
    goto/16 :goto_b

    :cond_642
    move v7, v10

    .line 665
    goto :goto_63c

    .line 670
    .end local v4           #_result:Z
    :sswitch_644
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 672
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 673
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiDirectSSID(Ljava/lang/String;)I

    move-result v4

    .line 674
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 676
    goto/16 :goto_b

    .line 680
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:I
    :sswitch_65a
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 682
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 683
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiDirectPassword(Ljava/lang/String;)I

    move-result v4

    .line 684
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 685
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 686
    goto/16 :goto_b

    .line 690
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:I
    :sswitch_670
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 691
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiDirectSetting()Z

    move-result v4

    .line 692
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 693
    if-eqz v4, :cond_685

    move v7, v8

    :goto_67f
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 694
    goto/16 :goto_b

    :cond_685
    move v7, v10

    .line 693
    goto :goto_67f

    .line 698
    .end local v4           #_result:Z
    :sswitch_687
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 700
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_6a3

    move v0, v8

    .line 701
    .local v0, _arg0:Z
    :goto_693
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiDirectSetting(Z)Z

    move-result v4

    .line 702
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    if-eqz v4, :cond_6a5

    move v7, v8

    :goto_69d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 704
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_6a3
    move v0, v10

    .line 700
    goto :goto_693

    .restart local v0       #_arg0:Z
    .restart local v4       #_result:Z
    :cond_6a5
    move v7, v10

    .line 703
    goto :goto_69d

    .line 708
    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :sswitch_6a7
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 710
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_6c3

    move v0, v8

    .line 711
    .restart local v0       #_arg0:Z
    :goto_6b3
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setSupplicantAutoConn(Z)Z

    move-result v4

    .line 712
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    if-eqz v4, :cond_6c5

    move v7, v8

    :goto_6bd
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 714
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_6c3
    move v0, v10

    .line 710
    goto :goto_6b3

    .restart local v0       #_arg0:Z
    .restart local v4       #_result:Z
    :cond_6c5
    move v7, v10

    .line 713
    goto :goto_6bd

    .line 718
    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :sswitch_6c7
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 720
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_6e3

    move v0, v8

    .line 721
    .restart local v0       #_arg0:Z
    :goto_6d3
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setSupplicantAutoScan(Z)Z

    move-result v4

    .line 722
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 723
    if-eqz v4, :cond_6e5

    move v7, v8

    :goto_6dd
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 724
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_6e3
    move v0, v10

    .line 720
    goto :goto_6d3

    .restart local v0       #_arg0:Z
    .restart local v4       #_result:Z
    :cond_6e5
    move v7, v10

    .line 723
    goto :goto_6dd

    .line 728
    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :sswitch_6e7
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 729
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->configureDirectPeerInterface()V

    .line 730
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 731
    goto/16 :goto_b

    .line 735
    :sswitch_6f5
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 737
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_718

    move v0, v8

    .line 739
    .restart local v0       #_arg0:Z
    :goto_701
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_71a

    move v1, v8

    .line 740
    .local v1, _arg1:Z
    :goto_708
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setSupplicantHotspotAutoConn(ZZ)Z

    move-result v4

    .line 741
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 742
    if-eqz v4, :cond_71c

    move v7, v8

    :goto_712
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 743
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :cond_718
    move v0, v10

    .line 737
    goto :goto_701

    .restart local v0       #_arg0:Z
    :cond_71a
    move v1, v10

    .line 739
    goto :goto_708

    .restart local v1       #_arg1:Z
    .restart local v4       #_result:Z
    :cond_71c
    move v7, v10

    .line 742
    goto :goto_712

    .line 43
    :sswitch_data_71e
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_24
        0x3 -> :sswitch_45
        0x4 -> :sswitch_5f
        0x5 -> :sswitch_82
        0x6 -> :sswitch_9d
        0x7 -> :sswitch_b4
        0x8 -> :sswitch_cb
        0x9 -> :sswitch_dd
        0xa -> :sswitch_f4
        0xb -> :sswitch_10b
        0xc -> :sswitch_122
        0xd -> :sswitch_138
        0xe -> :sswitch_14f
        0xf -> :sswitch_166
        0x10 -> :sswitch_181
        0x11 -> :sswitch_1a1
        0x12 -> :sswitch_1b8
        0x13 -> :sswitch_1d8
        0x14 -> :sswitch_1ef
        0x15 -> :sswitch_20f
        0x16 -> :sswitch_221
        0x17 -> :sswitch_23c
        0x18 -> :sswitch_24e
        0x19 -> :sswitch_269
        0x1a -> :sswitch_27b
        0x1b -> :sswitch_296
        0x1c -> :sswitch_2a8
        0x1d -> :sswitch_2c3
        0x1e -> :sswitch_2d5
        0x1f -> :sswitch_2e7
        0x20 -> :sswitch_30b
        0x21 -> :sswitch_31d
        0x22 -> :sswitch_334
        0x23 -> :sswitch_34f
        0x24 -> :sswitch_382
        0x25 -> :sswitch_3a4
        0x26 -> :sswitch_3bf
        0x27 -> :sswitch_3cd
        0x28 -> :sswitch_3e4
        0x29 -> :sswitch_3fa
        0x2a -> :sswitch_408
        0x2b -> :sswitch_438
        0x2c -> :sswitch_44a
        0x2d -> :sswitch_465
        0x2e -> :sswitch_483
        0x2f -> :sswitch_49e
        0x30 -> :sswitch_4bd
        0x31 -> :sswitch_4dc
        0x32 -> :sswitch_4ff
        0x33 -> :sswitch_511
        0x34 -> :sswitch_545
        0x35 -> :sswitch_56e
        0x36 -> :sswitch_580
        0x37 -> :sswitch_592
        0x38 -> :sswitch_5a9
        0x39 -> :sswitch_5c4
        0x3a -> :sswitch_5e8
        0x3b -> :sswitch_5ff
        0x3c -> :sswitch_616
        0x3d -> :sswitch_62d
        0x3e -> :sswitch_644
        0x3f -> :sswitch_65a
        0x40 -> :sswitch_670
        0x41 -> :sswitch_687
        0x42 -> :sswitch_6a7
        0x43 -> :sswitch_6c7
        0x44 -> :sswitch_6e7
        0x45 -> :sswitch_6f5
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method

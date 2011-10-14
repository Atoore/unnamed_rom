.class public abstract Landroid/bluetooth/IBluetooth$Stub;
.super Landroid/os/Binder;
.source "IBluetooth.java"

# interfaces
.implements Landroid/bluetooth/IBluetooth;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetooth$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetooth"

.field static final TRANSACTION_addRfcommServiceRecord:I = 0x29

.field static final TRANSACTION_authorizeService:I = 0x24

.field static final TRANSACTION_cancelBondProcess:I = 0x14

.field static final TRANSACTION_cancelDiscovery:I = 0xf

.field static final TRANSACTION_cancelPairingUserInput:I = 0x23

.field static final TRANSACTION_connectHeadset:I = 0x2b

.field static final TRANSACTION_createBond:I = 0x12

.field static final TRANSACTION_createBondOutOfBand:I = 0x13

.field static final TRANSACTION_disable:I = 0x4

.field static final TRANSACTION_disconnectHeadset:I = 0x2c

.field static final TRANSACTION_enable:I = 0x3

.field static final TRANSACTION_fetchRemoteDiInfo:I = 0x2f

.field static final TRANSACTION_fetchRemoteUuids:I = 0x1d

.field static final TRANSACTION_getAddress:I = 0x5

.field static final TRANSACTION_getBluetoothState:I = 0x2

.field static final TRANSACTION_getBondState:I = 0x17

.field static final TRANSACTION_getConnectedDeviceCount:I = 0x30

.field static final TRANSACTION_getDiscoverableTimeout:I = 0xb

.field static final TRANSACTION_getName:I = 0x6

.field static final TRANSACTION_getRemoteClass:I = 0x1b

.field static final TRANSACTION_getRemoteName:I = 0x19

.field static final TRANSACTION_getRemoteServiceChannel:I = 0x1e

.field static final TRANSACTION_getRemoteServices:I = 0x2e

.field static final TRANSACTION_getRemoteUuids:I = 0x1c

.field static final TRANSACTION_getScanMode:I = 0x8

.field static final TRANSACTION_getTrustState:I = 0x27

.field static final TRANSACTION_isBluetoothDock:I = 0x28

.field static final TRANSACTION_isDiscovering:I = 0x10

.field static final TRANSACTION_isEnabled:I = 0x1

.field static final TRANSACTION_listBonds:I = 0x16

.field static final TRANSACTION_notifyIncomingConnection:I = 0x2d

.field static final TRANSACTION_readOutOfBandData:I = 0x11

.field static final TRANSACTION_removeBond:I = 0x15

.field static final TRANSACTION_removeServiceRecord:I = 0x2a

.field static final TRANSACTION_setAvStreaming:I = 0xa

.field static final TRANSACTION_setDeviceOutOfBandData:I = 0x18

.field static final TRANSACTION_setDiscoverableTimeout:I = 0xc

.field static final TRANSACTION_setName:I = 0x7

.field static final TRANSACTION_setPairingConfirmation:I = 0x21

.field static final TRANSACTION_setPasskey:I = 0x20

.field static final TRANSACTION_setPin:I = 0x1f

.field static final TRANSACTION_setRemoteOutOfBandData:I = 0x22

.field static final TRANSACTION_setScanMode:I = 0x9

.field static final TRANSACTION_setServiceTrust:I = 0x26

.field static final TRANSACTION_setTrust:I = 0x25

.field static final TRANSACTION_startDiscovery:I = 0xd

.field static final TRANSACTION_startDiscoveryByCod:I = 0xe

.field static final TRANSACTION_updateRemoteName:I = 0x1a


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;
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
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_14

    .line 33
    check-cast v0, Landroid/bluetooth/IBluetooth;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 35
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/bluetooth/IBluetooth$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetooth$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 14
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
    const/4 v8, 0x0

    const/4 v6, 0x1

    const-string v7, "android.bluetooth.IBluetooth"

    .line 43
    sparse-switch p1, :sswitch_data_520

    .line 555
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_b
    return v5

    .line 47
    :sswitch_c
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 48
    goto :goto_b

    .line 52
    :sswitch_13
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->isEnabled()Z

    move-result v4

    .line 54
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v4, :cond_27

    move v5, v6

    :goto_22
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 56
    goto :goto_b

    :cond_27
    move v5, v8

    .line 55
    goto :goto_22

    .line 60
    .end local v4           #_result:Z
    :sswitch_29
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getBluetoothState()I

    move-result v4

    .line 62
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 64
    goto :goto_b

    .line 68
    .end local v4           #_result:I
    :sswitch_3a
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->enable()Z

    move-result v4

    .line 70
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v4, :cond_4e

    move v5, v6

    :goto_49
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 72
    goto :goto_b

    :cond_4e
    move v5, v8

    .line 71
    goto :goto_49

    .line 76
    .end local v4           #_result:Z
    :sswitch_50
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6b

    move v0, v6

    .line 79
    .local v0, _arg0:Z
    :goto_5c
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->disable(Z)Z

    move-result v4

    .line 80
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v4, :cond_6d

    move v5, v6

    :goto_66
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 82
    goto :goto_b

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_6b
    move v0, v8

    .line 78
    goto :goto_5c

    .restart local v0       #_arg0:Z
    .restart local v4       #_result:Z
    :cond_6d
    move v5, v8

    .line 81
    goto :goto_66

    .line 86
    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :sswitch_6f
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 90
    goto :goto_b

    .line 94
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_80
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getName()Ljava/lang/String;

    move-result-object v4

    .line 96
    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 98
    goto/16 :goto_b

    .line 102
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_92
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->setName(Ljava/lang/String;)Z

    move-result v4

    .line 106
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v4, :cond_ab

    move v5, v6

    :goto_a5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 108
    goto/16 :goto_b

    :cond_ab
    move v5, v8

    .line 107
    goto :goto_a5

    .line 112
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_ad
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getScanMode()I

    move-result v4

    .line 114
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 116
    goto/16 :goto_b

    .line 120
    .end local v4           #_result:I
    :sswitch_bf
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 124
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 125
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setScanMode(II)Z

    move-result v4

    .line 126
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-eqz v4, :cond_dc

    move v5, v6

    :goto_d6
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 128
    goto/16 :goto_b

    :cond_dc
    move v5, v8

    .line 127
    goto :goto_d6

    .line 132
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v4           #_result:Z
    :sswitch_de
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_fa

    move v0, v6

    .line 135
    .local v0, _arg0:Z
    :goto_ea
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->setAvStreaming(Z)Z

    move-result v4

    .line 136
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v4, :cond_fc

    move v5, v6

    :goto_f4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 138
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_fa
    move v0, v8

    .line 134
    goto :goto_ea

    .restart local v0       #_arg0:Z
    .restart local v4       #_result:Z
    :cond_fc
    move v5, v8

    .line 137
    goto :goto_f4

    .line 142
    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :sswitch_fe
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getDiscoverableTimeout()I

    move-result v4

    .line 144
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 146
    goto/16 :goto_b

    .line 150
    .end local v4           #_result:I
    :sswitch_110
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 153
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->setDiscoverableTimeout(I)Z

    move-result v4

    .line 154
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    if-eqz v4, :cond_129

    move v5, v6

    :goto_123
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 156
    goto/16 :goto_b

    :cond_129
    move v5, v8

    .line 155
    goto :goto_123

    .line 160
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_12b
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->startDiscovery()Z

    move-result v4

    .line 162
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    if-eqz v4, :cond_140

    move v5, v6

    :goto_13a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 164
    goto/16 :goto_b

    :cond_140
    move v5, v8

    .line 163
    goto :goto_13a

    .line 168
    .end local v4           #_result:Z
    :sswitch_142
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 171
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->startDiscoveryByCod(I)Z

    move-result v4

    .line 172
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    if-eqz v4, :cond_15b

    move v5, v6

    :goto_155
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 174
    goto/16 :goto_b

    :cond_15b
    move v5, v8

    .line 173
    goto :goto_155

    .line 178
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_15d
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->cancelDiscovery()Z

    move-result v4

    .line 180
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    if-eqz v4, :cond_172

    move v5, v6

    :goto_16c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 182
    goto/16 :goto_b

    :cond_172
    move v5, v8

    .line 181
    goto :goto_16c

    .line 186
    .end local v4           #_result:Z
    :sswitch_174
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->isDiscovering()Z

    move-result v4

    .line 188
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    if-eqz v4, :cond_189

    move v5, v6

    :goto_183
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 190
    goto/16 :goto_b

    :cond_189
    move v5, v8

    .line 189
    goto :goto_183

    .line 194
    .end local v4           #_result:Z
    :sswitch_18b
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->readOutOfBandData()[B

    move-result-object v4

    .line 196
    .local v4, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    move v5, v6

    .line 198
    goto/16 :goto_b

    .line 202
    .end local v4           #_result:[B
    :sswitch_19d
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->createBond(Ljava/lang/String;)Z

    move-result v4

    .line 206
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    if-eqz v4, :cond_1b6

    move v5, v6

    :goto_1b0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 208
    goto/16 :goto_b

    :cond_1b6
    move v5, v8

    .line 207
    goto :goto_1b0

    .line 212
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_1b8
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 216
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 218
    .local v1, _arg1:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 219
    .local v2, _arg2:[B
    invoke-virtual {p0, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->createBondOutOfBand(Ljava/lang/String;[B[B)Z

    move-result v4

    .line 220
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    if-eqz v4, :cond_1d9

    move v5, v6

    :goto_1d3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 222
    goto/16 :goto_b

    :cond_1d9
    move v5, v8

    .line 221
    goto :goto_1d3

    .line 226
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:[B
    .end local v2           #_arg2:[B
    .end local v4           #_result:Z
    :sswitch_1db
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 229
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->cancelBondProcess(Ljava/lang/String;)Z

    move-result v4

    .line 230
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    if-eqz v4, :cond_1f4

    move v5, v6

    :goto_1ee
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 232
    goto/16 :goto_b

    :cond_1f4
    move v5, v8

    .line 231
    goto :goto_1ee

    .line 236
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_1f6
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 239
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->removeBond(Ljava/lang/String;)Z

    move-result v4

    .line 240
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    if-eqz v4, :cond_20f

    move v5, v6

    :goto_209
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 242
    goto/16 :goto_b

    :cond_20f
    move v5, v8

    .line 241
    goto :goto_209

    .line 246
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_211
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->listBonds()[Ljava/lang/String;

    move-result-object v4

    .line 248
    .local v4, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v5, v6

    .line 250
    goto/16 :goto_b

    .line 254
    .end local v4           #_result:[Ljava/lang/String;
    :sswitch_223
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 257
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->getBondState(Ljava/lang/String;)I

    move-result v4

    .line 258
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 260
    goto/16 :goto_b

    .line 264
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:I
    :sswitch_239
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 268
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 270
    .restart local v1       #_arg1:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 271
    .restart local v2       #_arg2:[B
    invoke-virtual {p0, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setDeviceOutOfBandData(Ljava/lang/String;[B[B)Z

    move-result v4

    .line 272
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    if-eqz v4, :cond_25a

    move v5, v6

    :goto_254
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 274
    goto/16 :goto_b

    :cond_25a
    move v5, v8

    .line 273
    goto :goto_254

    .line 278
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:[B
    .end local v2           #_arg2:[B
    .end local v4           #_result:Z
    :sswitch_25c
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 281
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 282
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 284
    goto/16 :goto_b

    .line 288
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_272
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 291
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->updateRemoteName(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 293
    goto/16 :goto_b

    .line 297
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_284
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 300
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteClass(Ljava/lang/String;)I

    move-result v4

    .line 301
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 303
    goto/16 :goto_b

    .line 307
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:I
    :sswitch_29a
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 310
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteUuids(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v4

    .line 311
    .local v4, _result:[Landroid/os/ParcelUuid;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    invoke-virtual {p3, v4, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    move v5, v6

    .line 313
    goto/16 :goto_b

    .line 317
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:[Landroid/os/ParcelUuid;
    :sswitch_2b0
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 321
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2df

    .line 322
    sget-object v5, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 328
    .local v1, _arg1:Landroid/os/ParcelUuid;
    :goto_2c7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/bluetooth/IBluetoothCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v2

    .line 329
    .local v2, _arg2:Landroid/bluetooth/IBluetoothCallback;
    invoke-virtual {p0, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->fetchRemoteUuids(Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothCallback;)Z

    move-result v4

    .line 330
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    if-eqz v4, :cond_2e1

    move v5, v6

    :goto_2d9
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 332
    goto/16 :goto_b

    .line 325
    .end local v1           #_arg1:Landroid/os/ParcelUuid;
    .end local v2           #_arg2:Landroid/bluetooth/IBluetoothCallback;
    .end local v4           #_result:Z
    :cond_2df
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_2c7

    .restart local v2       #_arg2:Landroid/bluetooth/IBluetoothCallback;
    .restart local v4       #_result:Z
    :cond_2e1
    move v5, v8

    .line 331
    goto :goto_2d9

    .line 336
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Landroid/os/ParcelUuid;
    .end local v2           #_arg2:Landroid/bluetooth/IBluetoothCallback;
    .end local v4           #_result:Z
    :sswitch_2e3
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 340
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_307

    .line 341
    sget-object v5, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 346
    .restart local v1       #_arg1:Landroid/os/ParcelUuid;
    :goto_2fa
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteServiceChannel(Ljava/lang/String;Landroid/os/ParcelUuid;)I

    move-result v4

    .line 347
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 349
    goto/16 :goto_b

    .line 344
    .end local v1           #_arg1:Landroid/os/ParcelUuid;
    .end local v4           #_result:I
    :cond_307
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_2fa

    .line 353
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Landroid/os/ParcelUuid;
    :sswitch_309
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 357
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 358
    .local v1, _arg1:[B
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setPin(Ljava/lang/String;[B)Z

    move-result v4

    .line 359
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    if-eqz v4, :cond_326

    move v5, v6

    :goto_320
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 361
    goto/16 :goto_b

    :cond_326
    move v5, v8

    .line 360
    goto :goto_320

    .line 365
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:[B
    .end local v4           #_result:Z
    :sswitch_328
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 369
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 370
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setPasskey(Ljava/lang/String;I)Z

    move-result v4

    .line 371
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    if-eqz v4, :cond_345

    move v5, v6

    :goto_33f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 373
    goto/16 :goto_b

    :cond_345
    move v5, v8

    .line 372
    goto :goto_33f

    .line 377
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v4           #_result:Z
    :sswitch_347
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 381
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_367

    move v1, v6

    .line 382
    .local v1, _arg1:Z
    :goto_357
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setPairingConfirmation(Ljava/lang/String;Z)Z

    move-result v4

    .line 383
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    if-eqz v4, :cond_369

    move v5, v6

    :goto_361
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 385
    goto/16 :goto_b

    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :cond_367
    move v1, v8

    .line 381
    goto :goto_357

    .restart local v1       #_arg1:Z
    .restart local v4       #_result:Z
    :cond_369
    move v5, v8

    .line 384
    goto :goto_361

    .line 389
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :sswitch_36b
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 392
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->setRemoteOutOfBandData(Ljava/lang/String;)Z

    move-result v4

    .line 393
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    if-eqz v4, :cond_384

    move v5, v6

    :goto_37e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 395
    goto/16 :goto_b

    :cond_384
    move v5, v8

    .line 394
    goto :goto_37e

    .line 399
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_386
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 402
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->cancelPairingUserInput(Ljava/lang/String;)Z

    move-result v4

    .line 403
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    if-eqz v4, :cond_39f

    move v5, v6

    :goto_399
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 405
    goto/16 :goto_b

    :cond_39f
    move v5, v8

    .line 404
    goto :goto_399

    .line 409
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_3a1
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 413
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3c8

    move v1, v6

    .line 415
    .restart local v1       #_arg1:Z
    :goto_3b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3ca

    move v2, v6

    .line 416
    .local v2, _arg2:Z
    :goto_3b8
    invoke-virtual {p0, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->authorizeService(Ljava/lang/String;ZZ)Z

    move-result v4

    .line 417
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    if-eqz v4, :cond_3cc

    move v5, v6

    :goto_3c2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 419
    goto/16 :goto_b

    .end local v1           #_arg1:Z
    .end local v2           #_arg2:Z
    .end local v4           #_result:Z
    :cond_3c8
    move v1, v8

    .line 413
    goto :goto_3b1

    .restart local v1       #_arg1:Z
    :cond_3ca
    move v2, v8

    .line 415
    goto :goto_3b8

    .restart local v2       #_arg2:Z
    .restart local v4       #_result:Z
    :cond_3cc
    move v5, v8

    .line 418
    goto :goto_3c2

    .line 423
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Z
    .end local v2           #_arg2:Z
    .end local v4           #_result:Z
    :sswitch_3ce
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 427
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3ee

    move v1, v6

    .line 428
    .restart local v1       #_arg1:Z
    :goto_3de
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setTrust(Ljava/lang/String;Z)Z

    move-result v4

    .line 429
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    if-eqz v4, :cond_3f0

    move v5, v6

    :goto_3e8
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 431
    goto/16 :goto_b

    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :cond_3ee
    move v1, v8

    .line 427
    goto :goto_3de

    .restart local v1       #_arg1:Z
    .restart local v4       #_result:Z
    :cond_3f0
    move v5, v8

    .line 430
    goto :goto_3e8

    .line 435
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :sswitch_3f2
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 437
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 439
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 441
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_416

    move v2, v6

    .line 442
    .restart local v2       #_arg2:Z
    :goto_406
    invoke-virtual {p0, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setServiceTrust(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    .line 443
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    if-eqz v4, :cond_418

    move v5, v6

    :goto_410
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 445
    goto/16 :goto_b

    .end local v2           #_arg2:Z
    .end local v4           #_result:Z
    :cond_416
    move v2, v8

    .line 441
    goto :goto_406

    .restart local v2       #_arg2:Z
    .restart local v4       #_result:Z
    :cond_418
    move v5, v8

    .line 444
    goto :goto_410

    .line 449
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Z
    .end local v4           #_result:Z
    :sswitch_41a
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 452
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->getTrustState(Ljava/lang/String;)Z

    move-result v4

    .line 453
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    if-eqz v4, :cond_433

    move v5, v6

    :goto_42d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 455
    goto/16 :goto_b

    :cond_433
    move v5, v8

    .line 454
    goto :goto_42d

    .line 459
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_435
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 462
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->isBluetoothDock(Ljava/lang/String;)Z

    move-result v4

    .line 463
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    if-eqz v4, :cond_44e

    move v5, v6

    :goto_448
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 465
    goto/16 :goto_b

    :cond_44e
    move v5, v8

    .line 464
    goto :goto_448

    .line 469
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_450
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 473
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_47c

    .line 474
    sget-object v5, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 480
    .local v1, _arg1:Landroid/os/ParcelUuid;
    :goto_467
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 482
    .local v2, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 483
    .local v3, _arg3:Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->addRfcommServiceRecord(Ljava/lang/String;Landroid/os/ParcelUuid;ILandroid/os/IBinder;)I

    move-result v4

    .line 484
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 486
    goto/16 :goto_b

    .line 477
    .end local v1           #_arg1:Landroid/os/ParcelUuid;
    .end local v2           #_arg2:I
    .end local v3           #_arg3:Landroid/os/IBinder;
    .end local v4           #_result:I
    :cond_47c
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_467

    .line 490
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Landroid/os/ParcelUuid;
    :sswitch_47e
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 493
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->removeServiceRecord(I)V

    .line 494
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 495
    goto/16 :goto_b

    .line 499
    .end local v0           #_arg0:I
    :sswitch_490
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->connectHeadset(Ljava/lang/String;)Z

    move-result v4

    .line 503
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    if-eqz v4, :cond_4a9

    move v5, v6

    :goto_4a3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 505
    goto/16 :goto_b

    :cond_4a9
    move v5, v8

    .line 504
    goto :goto_4a3

    .line 509
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_4ab
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 512
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->disconnectHeadset(Ljava/lang/String;)Z

    move-result v4

    .line 513
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    if-eqz v4, :cond_4c4

    move v5, v6

    :goto_4be
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 515
    goto/16 :goto_b

    :cond_4c4
    move v5, v8

    .line 514
    goto :goto_4be

    .line 519
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_4c6
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 521
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 522
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->notifyIncomingConnection(Ljava/lang/String;)Z

    move-result v4

    .line 523
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 524
    if-eqz v4, :cond_4df

    move v5, v6

    :goto_4d9
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 525
    goto/16 :goto_b

    :cond_4df
    move v5, v8

    .line 524
    goto :goto_4d9

    .line 529
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_4e1
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 532
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteServices(Ljava/lang/String;)Z

    move-result v4

    .line 533
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    if-eqz v4, :cond_4fa

    move v5, v6

    :goto_4f4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 535
    goto/16 :goto_b

    :cond_4fa
    move v5, v8

    .line 534
    goto :goto_4f4

    .line 539
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_4fc
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 541
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 542
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->fetchRemoteDiInfo(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 544
    goto/16 :goto_b

    .line 548
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_50e
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 549
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getConnectedDeviceCount()I

    move-result v4

    .line 550
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 551
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 552
    goto/16 :goto_b

    .line 43
    :sswitch_data_520
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_29
        0x3 -> :sswitch_3a
        0x4 -> :sswitch_50
        0x5 -> :sswitch_6f
        0x6 -> :sswitch_80
        0x7 -> :sswitch_92
        0x8 -> :sswitch_ad
        0x9 -> :sswitch_bf
        0xa -> :sswitch_de
        0xb -> :sswitch_fe
        0xc -> :sswitch_110
        0xd -> :sswitch_12b
        0xe -> :sswitch_142
        0xf -> :sswitch_15d
        0x10 -> :sswitch_174
        0x11 -> :sswitch_18b
        0x12 -> :sswitch_19d
        0x13 -> :sswitch_1b8
        0x14 -> :sswitch_1db
        0x15 -> :sswitch_1f6
        0x16 -> :sswitch_211
        0x17 -> :sswitch_223
        0x18 -> :sswitch_239
        0x19 -> :sswitch_25c
        0x1a -> :sswitch_272
        0x1b -> :sswitch_284
        0x1c -> :sswitch_29a
        0x1d -> :sswitch_2b0
        0x1e -> :sswitch_2e3
        0x1f -> :sswitch_309
        0x20 -> :sswitch_328
        0x21 -> :sswitch_347
        0x22 -> :sswitch_36b
        0x23 -> :sswitch_386
        0x24 -> :sswitch_3a1
        0x25 -> :sswitch_3ce
        0x26 -> :sswitch_3f2
        0x27 -> :sswitch_41a
        0x28 -> :sswitch_435
        0x29 -> :sswitch_450
        0x2a -> :sswitch_47e
        0x2b -> :sswitch_490
        0x2c -> :sswitch_4ab
        0x2d -> :sswitch_4c6
        0x2e -> :sswitch_4e1
        0x2f -> :sswitch_4fc
        0x30 -> :sswitch_50e
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method

.class public abstract Landroid/os/IPowerManager$Stub;
.super Landroid/os/Binder;
.source "IPowerManager.java"

# interfaces
.implements Landroid/os/IPowerManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IPowerManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IPowerManager"

.field static final TRANSACTION_acquireDVFSlock:I = 0x1a

.field static final TRANSACTION_acquireWakeLock:I = 0x1

.field static final TRANSACTION_clearUserActivityTimeout:I = 0x8

.field static final TRANSACTION_crash:I = 0x11

.field static final TRANSACTION_getPlugType:I = 0x13

.field static final TRANSACTION_getSupportedWakeLockFlags:I = 0xa

.field static final TRANSACTION_goToSleep:I = 0x3

.field static final TRANSACTION_goToSleepWithReason:I = 0x4

.field static final TRANSACTION_isScreenOn:I = 0xe

.field static final TRANSACTION_preventScreenOn:I = 0xd

.field static final TRANSACTION_reboot:I = 0x10

.field static final TRANSACTION_rebootWithIntent:I = 0x18

.field static final TRANSACTION_releaseWakeLock:I = 0x5

.field static final TRANSACTION_setAttentionLight:I = 0x14

.field static final TRANSACTION_setAutoBrightnessLimit:I = 0xf

.field static final TRANSACTION_setBacklightBrightness:I = 0x12

.field static final TRANSACTION_setMaximumScreenOffTimeount:I = 0xc

.field static final TRANSACTION_setPokeLock:I = 0x9

.field static final TRANSACTION_setStayOnSetting:I = 0xb

.field static final TRANSACTION_systemFotaReboot:I = 0x15

.field static final TRANSACTION_systemPowerOff:I = 0x16

.field static final TRANSACTION_systemReboot:I = 0x17

.field static final TRANSACTION_systemReboot_Fota:I = 0x19

.field static final TRANSACTION_updateWakeLockWorkSource:I = 0x2

.field static final TRANSACTION_userActivity:I = 0x6

.field static final TRANSACTION_userActivityWithForce:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/IPowerManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;
    .registers 3
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_4

    .line 25
    const/4 v1, 0x0

    .line 31
    :goto_3
    return-object v1

    .line 27
    :cond_4
    const-string v1, "android.os.IPowerManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IPowerManager;

    if-eqz v1, :cond_14

    .line 29
    check-cast v0, Landroid/os/IPowerManager;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 31
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/os/IPowerManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IPowerManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 35
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

    const-string v9, "android.os.IPowerManager"

    .line 39
    sparse-switch p1, :sswitch_data_24a

    .line 311
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_b
    return v7

    .line 43
    :sswitch_c
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v7, v8

    .line 44
    goto :goto_b

    .line 48
    :sswitch_13
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 52
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 54
    .local v2, _arg1:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3a

    .line 57
    sget-object v7, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/WorkSource;

    .line 62
    .local v5, _arg3:Landroid/os/WorkSource;
    :goto_32
    invoke-virtual {p0, v0, v2, v4, v5}, Landroid/os/IPowerManager$Stub;->acquireWakeLock(ILandroid/os/IBinder;Ljava/lang/String;Landroid/os/WorkSource;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 64
    goto :goto_b

    .line 60
    .end local v5           #_arg3:Landroid/os/WorkSource;
    :cond_3a
    const/4 v5, 0x0

    .restart local v5       #_arg3:Landroid/os/WorkSource;
    goto :goto_32

    .line 68
    .end local v0           #_arg0:I
    .end local v2           #_arg1:Landroid/os/IBinder;
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v5           #_arg3:Landroid/os/WorkSource;
    :sswitch_3c
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 72
    .local v0, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_5b

    .line 73
    sget-object v7, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    .line 78
    .local v2, _arg1:Landroid/os/WorkSource;
    :goto_53
    invoke-virtual {p0, v0, v2}, Landroid/os/IPowerManager$Stub;->updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 80
    goto :goto_b

    .line 76
    .end local v2           #_arg1:Landroid/os/WorkSource;
    :cond_5b
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/os/WorkSource;
    goto :goto_53

    .line 84
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v2           #_arg1:Landroid/os/WorkSource;
    :sswitch_5d
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 87
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Landroid/os/IPowerManager$Stub;->goToSleep(J)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 89
    goto :goto_b

    .line 93
    .end local v0           #_arg0:J
    :sswitch_6e
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 97
    .restart local v0       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 98
    .local v2, _arg1:I
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/IPowerManager$Stub;->goToSleepWithReason(JI)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 100
    goto :goto_b

    .line 104
    .end local v0           #_arg0:J
    .end local v2           #_arg1:I
    :sswitch_83
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 108
    .local v0, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 109
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v2}, Landroid/os/IPowerManager$Stub;->releaseWakeLock(Landroid/os/IBinder;I)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 111
    goto/16 :goto_b

    .line 115
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v2           #_arg1:I
    :sswitch_99
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 119
    .local v0, _arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_b2

    move v2, v8

    .line 120
    .local v2, _arg1:Z
    :goto_a9
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/IPowerManager$Stub;->userActivity(JZ)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 122
    goto/16 :goto_b

    .end local v2           #_arg1:Z
    :cond_b2
    move v2, v10

    .line 119
    goto :goto_a9

    .line 126
    .end local v0           #_arg0:J
    :sswitch_b4
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 130
    .restart local v0       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_d4

    move v2, v8

    .line 132
    .restart local v2       #_arg1:Z
    :goto_c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_d6

    move v4, v8

    .line 133
    .local v4, _arg2:Z
    :goto_cb
    invoke-virtual {p0, v0, v1, v2, v4}, Landroid/os/IPowerManager$Stub;->userActivityWithForce(JZZ)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 135
    goto/16 :goto_b

    .end local v2           #_arg1:Z
    .end local v4           #_arg2:Z
    :cond_d4
    move v2, v10

    .line 130
    goto :goto_c4

    .restart local v2       #_arg1:Z
    :cond_d6
    move v4, v10

    .line 132
    goto :goto_cb

    .line 139
    .end local v0           #_arg0:J
    .end local v2           #_arg1:Z
    :sswitch_d8
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 143
    .restart local v0       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 144
    .local v2, _arg1:J
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/IPowerManager$Stub;->clearUserActivityTimeout(JJ)V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 146
    goto/16 :goto_b

    .line 150
    .end local v0           #_arg0:J
    .end local v2           #_arg1:J
    :sswitch_ee
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 154
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 156
    .local v2, _arg1:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 157
    .local v4, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v4}, Landroid/os/IPowerManager$Stub;->setPokeLock(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 159
    goto/16 :goto_b

    .line 163
    .end local v0           #_arg0:I
    .end local v2           #_arg1:Landroid/os/IBinder;
    .end local v4           #_arg2:Ljava/lang/String;
    :sswitch_108
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->getSupportedWakeLockFlags()I

    move-result v6

    .line 165
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 167
    goto/16 :goto_b

    .line 171
    .end local v6           #_result:I
    :sswitch_11a
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 174
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/os/IPowerManager$Stub;->setStayOnSetting(I)V

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 176
    goto/16 :goto_b

    .line 180
    .end local v0           #_arg0:I
    :sswitch_12c
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 183
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/os/IPowerManager$Stub;->setMaximumScreenOffTimeount(I)V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 185
    goto/16 :goto_b

    .line 189
    .end local v0           #_arg0:I
    :sswitch_13e
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_153

    move v0, v8

    .line 192
    .local v0, _arg0:Z
    :goto_14a
    invoke-virtual {p0, v0}, Landroid/os/IPowerManager$Stub;->preventScreenOn(Z)V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 194
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    :cond_153
    move v0, v10

    .line 191
    goto :goto_14a

    .line 198
    :sswitch_155
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->isScreenOn()Z

    move-result v6

    .line 200
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    if-eqz v6, :cond_16a

    move v7, v8

    :goto_164
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 202
    goto/16 :goto_b

    :cond_16a
    move v7, v10

    .line 201
    goto :goto_164

    .line 206
    .end local v6           #_result:Z
    :sswitch_16c
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 210
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 211
    .local v2, _arg1:I
    invoke-virtual {p0, v0, v2}, Landroid/os/IPowerManager$Stub;->setAutoBrightnessLimit(II)V

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 213
    goto/16 :goto_b

    .line 217
    .end local v0           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_182
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IPowerManager$Stub;->reboot(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 222
    goto/16 :goto_b

    .line 226
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_194
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 229
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IPowerManager$Stub;->crash(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 231
    goto/16 :goto_b

    .line 235
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_1a6
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 238
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/os/IPowerManager$Stub;->setBacklightBrightness(I)V

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 240
    goto/16 :goto_b

    .line 244
    .end local v0           #_arg0:I
    :sswitch_1b8
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->getPlugType()I

    move-result v6

    .line 246
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 248
    goto/16 :goto_b

    .line 252
    .end local v6           #_result:I
    :sswitch_1ca
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1e3

    move v0, v8

    .line 256
    .local v0, _arg0:Z
    :goto_1d6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 257
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v2}, Landroid/os/IPowerManager$Stub;->setAttentionLight(ZI)V

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 259
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    .end local v2           #_arg1:I
    :cond_1e3
    move v0, v10

    .line 254
    goto :goto_1d6

    .line 263
    :sswitch_1e5
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IPowerManager$Stub;->systemFotaReboot(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 268
    goto/16 :goto_b

    .line 272
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_1f7
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->systemPowerOff()V

    .line 274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 275
    goto/16 :goto_b

    .line 279
    :sswitch_205
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->systemReboot()V

    .line 281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 282
    goto/16 :goto_b

    .line 286
    :sswitch_213
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->rebootWithIntent()V

    .line 288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 289
    goto/16 :goto_b

    .line 293
    :sswitch_221
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->systemReboot_Fota()V

    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 296
    goto/16 :goto_b

    .line 300
    :sswitch_22f
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 304
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 305
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v2}, Landroid/os/IPowerManager$Stub;->acquireDVFSlock(II)I

    move-result v6

    .line 306
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 308
    goto/16 :goto_b

    .line 39
    nop

    :sswitch_data_24a
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_3c
        0x3 -> :sswitch_5d
        0x4 -> :sswitch_6e
        0x5 -> :sswitch_83
        0x6 -> :sswitch_99
        0x7 -> :sswitch_b4
        0x8 -> :sswitch_d8
        0x9 -> :sswitch_ee
        0xa -> :sswitch_108
        0xb -> :sswitch_11a
        0xc -> :sswitch_12c
        0xd -> :sswitch_13e
        0xe -> :sswitch_155
        0xf -> :sswitch_16c
        0x10 -> :sswitch_182
        0x11 -> :sswitch_194
        0x12 -> :sswitch_1a6
        0x13 -> :sswitch_1b8
        0x14 -> :sswitch_1ca
        0x15 -> :sswitch_1e5
        0x16 -> :sswitch_1f7
        0x17 -> :sswitch_205
        0x18 -> :sswitch_213
        0x19 -> :sswitch_221
        0x1a -> :sswitch_22f
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method

.class public abstract Lcom/android/internal/telephony/ITelephonyExt$Stub;
.super Landroid/os/Binder;
.source "ITelephonyExt.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephonyExt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephonyExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephonyExt$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephonyExt"

.field static final TRANSACTION_getActiveCallsCount:I = 0x11

.field static final TRANSACTION_getCallBaseTime:I = 0x15

.field static final TRANSACTION_getCallTime:I = 0x14

.field static final TRANSACTION_getCallerName:I = 0x13

.field static final TRANSACTION_getHoldCallsCount:I = 0x12

.field static final TRANSACTION_getMsisdnavailable:I = 0x3

.field static final TRANSACTION_getMute:I = 0xe

.field static final TRANSACTION_getPin2LockKey:I = 0x9

.field static final TRANSACTION_getPinLockKey:I = 0x8

.field static final TRANSACTION_getSimPin2Retry:I = 0x6

.field static final TRANSACTION_getSimPinRetry:I = 0x4

.field static final TRANSACTION_getSimPuk2Retry:I = 0x7

.field static final TRANSACTION_getSimPukRetry:I = 0x5

.field static final TRANSACTION_getTelephonyFeature:I = 0xa

.field static final TRANSACTION_getTimeInfo:I = 0x1d

.field static final TRANSACTION_initiateFakecall:I = 0x1f

.field static final TRANSACTION_isConferenceCall:I = 0x18

.field static final TRANSACTION_isFirstCallDialingAndSecondCallActive:I = 0x1a

.field static final TRANSACTION_isIdle:I = 0x17

.field static final TRANSACTION_isMultiCall:I = 0x19

.field static final TRANSACTION_isSimFDNEnabled:I = 0xb

.field static final TRANSACTION_sendRequestToRIL:I = 0x1e

.field static final TRANSACTION_setMute:I = 0xd

.field static final TRANSACTION_showPopupCallScreen:I = 0x16

.field static final TRANSACTION_supplyPerso:I = 0x1c

.field static final TRANSACTION_supplyPin2:I = 0x2

.field static final TRANSACTION_supplyPuk:I = 0x1

.field static final TRANSACTION_switchHoldingAndActive:I = 0xc

.field static final TRANSACTION_turnOnBluetooth:I = 0x10

.field static final TRANSACTION_turnOnSpeaker:I = 0xf

.field static final TRANSACTION_updateRAFTproximity:I = 0x1b


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;
    .registers 3
    .parameter "obj"

    .prologue
    .line 30
    if-nez p0, :cond_4

    .line 31
    const/4 v1, 0x0

    .line 37
    :goto_3
    return-object v1

    .line 33
    :cond_4
    const-string v1, "com.android.internal.telephony.ITelephonyExt"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephonyExt;

    if-eqz v1, :cond_14

    .line 35
    check-cast v0, Lcom/android/internal/telephony/ITelephonyExt;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 37
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/android/internal/telephony/ITelephonyExt$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 41
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

    const-string v7, "com.android.internal.telephony.ITelephonyExt"

    .line 45
    sparse-switch p1, :sswitch_data_290

    .line 316
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_b
    return v5

    .line 49
    :sswitch_c
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 50
    goto :goto_b

    .line 54
    :sswitch_13
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 60
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v3, :cond_2f

    move v5, v6

    :goto_2a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 62
    goto :goto_b

    :cond_2f
    move v5, v8

    .line 61
    goto :goto_2a

    .line 66
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_31
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 69
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->supplyPin2(Ljava/lang/String;)Z

    move-result v3

    .line 70
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v3, :cond_49

    move v5, v6

    :goto_44
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 72
    goto :goto_b

    :cond_49
    move v5, v8

    .line 71
    goto :goto_44

    .line 76
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_4b
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getMsisdnavailable()Z

    move-result v3

    .line 78
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v3, :cond_5f

    move v5, v6

    :goto_5a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 80
    goto :goto_b

    :cond_5f
    move v5, v8

    .line 79
    goto :goto_5a

    .line 84
    .end local v3           #_result:Z
    :sswitch_61
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getSimPinRetry()I

    move-result v3

    .line 86
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 88
    goto :goto_b

    .line 92
    .end local v3           #_result:I
    :sswitch_72
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getSimPukRetry()I

    move-result v3

    .line 94
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 96
    goto :goto_b

    .line 100
    .end local v3           #_result:I
    :sswitch_83
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getSimPin2Retry()I

    move-result v3

    .line 102
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 104
    goto/16 :goto_b

    .line 108
    .end local v3           #_result:I
    :sswitch_95
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getSimPuk2Retry()I

    move-result v3

    .line 110
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 112
    goto/16 :goto_b

    .line 116
    .end local v3           #_result:I
    :sswitch_a7
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getPinLockKey()I

    move-result v3

    .line 118
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 120
    goto/16 :goto_b

    .line 124
    .end local v3           #_result:I
    :sswitch_b9
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getPin2LockKey()I

    move-result v3

    .line 126
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 128
    goto/16 :goto_b

    .line 132
    .end local v3           #_result:I
    :sswitch_cb
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getTelephonyFeature()Ljava/util/Map;

    move-result-object v3

    .line 134
    .local v3, _result:Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    move v5, v6

    .line 136
    goto/16 :goto_b

    .line 140
    .end local v3           #_result:Ljava/util/Map;
    :sswitch_dd
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->isSimFDNEnabled()Z

    move-result v3

    .line 142
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    if-eqz v3, :cond_f2

    move v5, v6

    :goto_ec
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 144
    goto/16 :goto_b

    :cond_f2
    move v5, v8

    .line 143
    goto :goto_ec

    .line 148
    .end local v3           #_result:Z
    :sswitch_f4
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->switchHoldingAndActive()V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 151
    goto/16 :goto_b

    .line 155
    :sswitch_102
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_117

    move v0, v6

    .line 158
    .local v0, _arg0:Z
    :goto_10e
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->setMute(Z)V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 160
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    :cond_117
    move v0, v8

    .line 157
    goto :goto_10e

    .line 164
    :sswitch_119
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getMute()Z

    move-result v3

    .line 166
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    if-eqz v3, :cond_12e

    move v5, v6

    :goto_128
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 168
    goto/16 :goto_b

    :cond_12e
    move v5, v8

    .line 167
    goto :goto_128

    .line 172
    .end local v3           #_result:Z
    :sswitch_130
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_145

    move v0, v6

    .line 175
    .restart local v0       #_arg0:Z
    :goto_13c
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->turnOnSpeaker(Z)V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 177
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    :cond_145
    move v0, v8

    .line 174
    goto :goto_13c

    .line 181
    :sswitch_147
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->turnOnBluetooth()V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 184
    goto/16 :goto_b

    .line 188
    :sswitch_155
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getActiveCallsCount()I

    move-result v3

    .line 190
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 192
    goto/16 :goto_b

    .line 196
    .end local v3           #_result:I
    :sswitch_167
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getHoldCallsCount()I

    move-result v3

    .line 198
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 200
    goto/16 :goto_b

    .line 204
    .end local v3           #_result:I
    :sswitch_179
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getCallerName()Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 208
    goto/16 :goto_b

    .line 212
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_18b
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getCallTime()J

    move-result-wide v3

    .line 214
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 216
    goto/16 :goto_b

    .line 220
    .end local v3           #_result:J
    :sswitch_19d
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getCallBaseTime()J

    move-result-wide v3

    .line 222
    .restart local v3       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 224
    goto/16 :goto_b

    .line 228
    .end local v3           #_result:J
    :sswitch_1af
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->showPopupCallScreen()Z

    move-result v3

    .line 230
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    if-eqz v3, :cond_1c4

    move v5, v6

    :goto_1be
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 232
    goto/16 :goto_b

    :cond_1c4
    move v5, v8

    .line 231
    goto :goto_1be

    .line 236
    .end local v3           #_result:Z
    :sswitch_1c6
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->isIdle()Z

    move-result v3

    .line 238
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    if-eqz v3, :cond_1db

    move v5, v6

    :goto_1d5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 240
    goto/16 :goto_b

    :cond_1db
    move v5, v8

    .line 239
    goto :goto_1d5

    .line 244
    .end local v3           #_result:Z
    :sswitch_1dd
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->isConferenceCall()Z

    move-result v3

    .line 246
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    if-eqz v3, :cond_1f2

    move v5, v6

    :goto_1ec
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 248
    goto/16 :goto_b

    :cond_1f2
    move v5, v8

    .line 247
    goto :goto_1ec

    .line 252
    .end local v3           #_result:Z
    :sswitch_1f4
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->isMultiCall()Z

    move-result v3

    .line 254
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    if-eqz v3, :cond_209

    move v5, v6

    :goto_203
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 256
    goto/16 :goto_b

    :cond_209
    move v5, v8

    .line 255
    goto :goto_203

    .line 260
    .end local v3           #_result:Z
    :sswitch_20b
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->isFirstCallDialingAndSecondCallActive()Z

    move-result v3

    .line 262
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    if-eqz v3, :cond_220

    move v5, v6

    :goto_21a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 264
    goto/16 :goto_b

    :cond_220
    move v5, v8

    .line 263
    goto :goto_21a

    .line 268
    .end local v3           #_result:Z
    :sswitch_222
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 271
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->updateRAFTproximity(I)V

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 273
    goto/16 :goto_b

    .line 277
    .end local v0           #_arg0:I
    :sswitch_234
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->supplyPerso(Ljava/lang/String;)Z

    move-result v3

    .line 281
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    if-eqz v3, :cond_24d

    move v5, v6

    :goto_247
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 283
    goto/16 :goto_b

    :cond_24d
    move v5, v8

    .line 282
    goto :goto_247

    .line 287
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_24f
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getTimeInfo()Ljava/lang/String;

    move-result-object v3

    .line 289
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 291
    goto/16 :goto_b

    .line 295
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_261
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 299
    .local v0, _arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 301
    .local v1, _arg1:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 302
    .local v2, _arg2:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->sendRequestToRIL([B[BI)I

    move-result v3

    .line 303
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    move v5, v6

    .line 306
    goto/16 :goto_b

    .line 310
    .end local v0           #_arg0:[B
    .end local v1           #_arg1:[B
    .end local v2           #_arg2:I
    .end local v3           #_result:I
    :sswitch_282
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->initiateFakecall()V

    .line 312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 313
    goto/16 :goto_b

    .line 45
    :sswitch_data_290
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_31
        0x3 -> :sswitch_4b
        0x4 -> :sswitch_61
        0x5 -> :sswitch_72
        0x6 -> :sswitch_83
        0x7 -> :sswitch_95
        0x8 -> :sswitch_a7
        0x9 -> :sswitch_b9
        0xa -> :sswitch_cb
        0xb -> :sswitch_dd
        0xc -> :sswitch_f4
        0xd -> :sswitch_102
        0xe -> :sswitch_119
        0xf -> :sswitch_130
        0x10 -> :sswitch_147
        0x11 -> :sswitch_155
        0x12 -> :sswitch_167
        0x13 -> :sswitch_179
        0x14 -> :sswitch_18b
        0x15 -> :sswitch_19d
        0x16 -> :sswitch_1af
        0x17 -> :sswitch_1c6
        0x18 -> :sswitch_1dd
        0x19 -> :sswitch_1f4
        0x1a -> :sswitch_20b
        0x1b -> :sswitch_222
        0x1c -> :sswitch_234
        0x1d -> :sswitch_24f
        0x1e -> :sswitch_261
        0x1f -> :sswitch_282
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method

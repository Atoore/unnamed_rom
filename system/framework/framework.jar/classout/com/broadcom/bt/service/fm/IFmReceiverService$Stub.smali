.class public abstract Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;
.super Landroid/os/Binder;
.source "IFmReceiverService.java"

# interfaces
.implements Lcom/broadcom/bt/service/fm/IFmReceiverService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/fm/IFmReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.bt.service.fm.IFmReceiverService"

.field static final TRANSACTION_estimateNoiseFloorLevel:I = 0x12

.field static final TRANSACTION_getRadioIsOn:I = 0x4

.field static final TRANSACTION_getStatus:I = 0x8

.field static final TRANSACTION_init:I = 0x1

.field static final TRANSACTION_muteAudio:I = 0x9

.field static final TRANSACTION_registerCallback:I = 0x2

.field static final TRANSACTION_seekRdsStation:I = 0xb

.field static final TRANSACTION_seekStation:I = 0xa

.field static final TRANSACTION_seekStationAbort:I = 0xc

.field static final TRANSACTION_setAudioMode:I = 0xe

.field static final TRANSACTION_setAudioPath:I = 0xf

.field static final TRANSACTION_setFMVolume:I = 0x14

.field static final TRANSACTION_setLiveAudioPolling:I = 0x13

.field static final TRANSACTION_setRdsMode:I = 0xd

.field static final TRANSACTION_setStepSize:I = 0x10

.field static final TRANSACTION_setWorldRegion:I = 0x11

.field static final TRANSACTION_tuneRadio:I = 0x7

.field static final TRANSACTION_turnOffRadio:I = 0x6

.field static final TRANSACTION_turnOnRadio:I = 0x5

.field static final TRANSACTION_unregisterCallback:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/fm/IFmReceiverService;
    .registers 3
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v1, 0x0

    .line 33
    :goto_3
    return-object v1

    .line 29
    :cond_4
    const-string v1, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/broadcom/bt/service/fm/IFmReceiverService;

    if-eqz v1, :cond_14

    .line 31
    check-cast v0, Lcom/broadcom/bt/service/fm/IFmReceiverService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 33
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 37
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

    const-string v7, "com.broadcom.bt.service.fm.IFmReceiverService"

    .line 41
    sparse-switch p1, :sswitch_data_1e0

    .line 254
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_b
    return v5

    .line 45
    :sswitch_c
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 46
    goto :goto_b

    .line 50
    :sswitch_13
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->init()V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 53
    goto :goto_b

    .line 57
    :sswitch_20
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    move-result-object v0

    .line 60
    .local v0, _arg0:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->registerCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 62
    goto :goto_b

    .line 66
    .end local v0           #_arg0:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;
    :sswitch_35
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    move-result-object v0

    .line 69
    .restart local v0       #_arg0:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->unregisterCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 71
    goto :goto_b

    .line 75
    .end local v0           #_arg0:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;
    :sswitch_4a
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->getRadioIsOn()Z

    move-result v4

    .line 77
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    if-eqz v4, :cond_5e

    move v5, v6

    :goto_59
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 79
    goto :goto_b

    :cond_5e
    move v5, v8

    .line 78
    goto :goto_59

    .line 83
    .end local v4           #_result:Z
    :sswitch_60
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 86
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->turnOnRadio(I)I

    move-result v4

    .line 87
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 89
    goto :goto_b

    .line 93
    .end local v0           #_arg0:I
    .end local v4           #_result:I
    :sswitch_75
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->turnOffRadio()I

    move-result v4

    .line 95
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 97
    goto :goto_b

    .line 101
    .end local v4           #_result:I
    :sswitch_86
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 104
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->tuneRadio(I)I

    move-result v4

    .line 105
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 107
    goto/16 :goto_b

    .line 111
    .end local v0           #_arg0:I
    .end local v4           #_result:I
    :sswitch_9c
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->getStatus()I

    move-result v4

    .line 113
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 115
    goto/16 :goto_b

    .line 119
    .end local v4           #_result:I
    :sswitch_ae
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c7

    move v0, v6

    .line 122
    .local v0, _arg0:Z
    :goto_ba
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->muteAudio(Z)I

    move-result v4

    .line 123
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 125
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    .end local v4           #_result:I
    :cond_c7
    move v0, v8

    .line 121
    goto :goto_ba

    .line 129
    :sswitch_c9
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 133
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 134
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->seekStation(II)I

    move-result v4

    .line 135
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 137
    goto/16 :goto_b

    .line 141
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v4           #_result:I
    :sswitch_e3
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 145
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 147
    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 149
    .local v2, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 150
    .local v3, _arg3:I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->seekRdsStation(IIII)I

    move-result v4

    .line 151
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 153
    goto/16 :goto_b

    .line 157
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v2           #_arg2:I
    .end local v3           #_arg3:I
    .end local v4           #_result:I
    :sswitch_105
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->seekStationAbort()I

    move-result v4

    .line 159
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 161
    goto/16 :goto_b

    .line 165
    .end local v4           #_result:I
    :sswitch_117
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 169
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 171
    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 173
    .restart local v2       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 174
    .restart local v3       #_arg3:I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->setRdsMode(IIII)I

    move-result v4

    .line 175
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 177
    goto/16 :goto_b

    .line 181
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v2           #_arg2:I
    .end local v3           #_arg3:I
    .end local v4           #_result:I
    :sswitch_139
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 184
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->setAudioMode(I)I

    move-result v4

    .line 185
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 187
    goto/16 :goto_b

    .line 191
    .end local v0           #_arg0:I
    .end local v4           #_result:I
    :sswitch_14f
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 194
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->setAudioPath(I)I

    move-result v4

    .line 195
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 197
    goto/16 :goto_b

    .line 201
    .end local v0           #_arg0:I
    .end local v4           #_result:I
    :sswitch_165
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 204
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->setStepSize(I)I

    move-result v4

    .line 205
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 207
    goto/16 :goto_b

    .line 211
    .end local v0           #_arg0:I
    .end local v4           #_result:I
    :sswitch_17b
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 215
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 216
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->setWorldRegion(II)I

    move-result v4

    .line 217
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 219
    goto/16 :goto_b

    .line 223
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v4           #_result:I
    :sswitch_195
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 226
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->estimateNoiseFloorLevel(I)I

    move-result v4

    .line 227
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 229
    goto/16 :goto_b

    .line 233
    .end local v0           #_arg0:I
    .end local v4           #_result:I
    :sswitch_1ab
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1c8

    move v0, v6

    .line 237
    .local v0, _arg0:Z
    :goto_1b7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 238
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->setLiveAudioPolling(ZI)I

    move-result v4

    .line 239
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 241
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    .end local v1           #_arg1:I
    .end local v4           #_result:I
    :cond_1c8
    move v0, v8

    .line 235
    goto :goto_1b7

    .line 245
    :sswitch_1ca
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 248
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->setFMVolume(I)I

    move-result v4

    .line 249
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 251
    goto/16 :goto_b

    .line 41
    :sswitch_data_1e0
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_20
        0x3 -> :sswitch_35
        0x4 -> :sswitch_4a
        0x5 -> :sswitch_60
        0x6 -> :sswitch_75
        0x7 -> :sswitch_86
        0x8 -> :sswitch_9c
        0x9 -> :sswitch_ae
        0xa -> :sswitch_c9
        0xb -> :sswitch_e3
        0xc -> :sswitch_105
        0xd -> :sswitch_117
        0xe -> :sswitch_139
        0xf -> :sswitch_14f
        0x10 -> :sswitch_165
        0x11 -> :sswitch_17b
        0x12 -> :sswitch_195
        0x13 -> :sswitch_1ab
        0x14 -> :sswitch_1ca
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method

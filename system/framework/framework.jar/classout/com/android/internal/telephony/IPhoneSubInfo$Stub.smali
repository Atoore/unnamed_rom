.class public abstract Lcom/android/internal/telephony/IPhoneSubInfo$Stub;
.super Landroid/os/Binder;
.source "IPhoneSubInfo.java"

# interfaces
.implements Lcom/android/internal/telephony/IPhoneSubInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IPhoneSubInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IPhoneSubInfo$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IPhoneSubInfo"

.field static final TRANSACTION_getCompleteVoiceMailNumber:I = 0x8

.field static final TRANSACTION_getDeviceId:I = 0x1

.field static final TRANSACTION_getDeviceSvn:I = 0x2

.field static final TRANSACTION_getIccSerialNumber:I = 0x4

.field static final TRANSACTION_getLine1AlphaTag:I = 0x6

.field static final TRANSACTION_getLine1Number:I = 0x5

.field static final TRANSACTION_getSubscriberId:I = 0x3

.field static final TRANSACTION_getVoiceMailAlphaTag:I = 0x9

.field static final TRANSACTION_getVoiceMailNumber:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;
    .registers 3
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_4

    .line 28
    const/4 v1, 0x0

    .line 34
    :goto_3
    return-object v1

    .line 30
    :cond_4
    const-string v1, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telephony/IPhoneSubInfo;

    if-eqz v1, :cond_14

    .line 32
    check-cast v0, Lcom/android/internal/telephony/IPhoneSubInfo;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 34
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/android/internal/telephony/IPhoneSubInfo$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
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
    const/4 v2, 0x1

    const-string v3, "com.android.internal.telephony.IPhoneSubInfo"

    .line 42
    sparse-switch p1, :sswitch_data_ae

    .line 122
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_a
    return v1

    .line 46
    :sswitch_b
    const-string v1, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 47
    goto :goto_a

    .line 51
    :sswitch_12
    const-string v1, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 55
    goto :goto_a

    .line 59
    .end local v0           #_result:Ljava/lang/String;
    :sswitch_23
    const-string v1, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    .line 61
    .restart local v0       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 63
    goto :goto_a

    .line 67
    .end local v0           #_result:Ljava/lang/String;
    :sswitch_34
    const-string v1, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 69
    .restart local v0       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 71
    goto :goto_a

    .line 75
    .end local v0           #_result:Ljava/lang/String;
    :sswitch_45
    const-string v1, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 77
    .restart local v0       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 79
    goto :goto_a

    .line 83
    .end local v0           #_result:Ljava/lang/String;
    :sswitch_56
    const-string v1, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 85
    .restart local v0       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 87
    goto :goto_a

    .line 91
    .end local v0           #_result:Ljava/lang/String;
    :sswitch_67
    const-string v1, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 93
    .restart local v0       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 95
    goto :goto_a

    .line 99
    .end local v0           #_result:Ljava/lang/String;
    :sswitch_78
    const-string v1, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    .line 101
    .restart local v0       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 103
    goto :goto_a

    .line 107
    .end local v0           #_result:Ljava/lang/String;
    :sswitch_89
    const-string v1, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getCompleteVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    .line 109
    .restart local v0       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 111
    goto/16 :goto_a

    .line 115
    .end local v0           #_result:Ljava/lang/String;
    :sswitch_9b
    const-string v1, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 117
    .restart local v0       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 119
    goto/16 :goto_a

    .line 42
    nop

    :sswitch_data_ae
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_23
        0x3 -> :sswitch_34
        0x4 -> :sswitch_45
        0x5 -> :sswitch_56
        0x6 -> :sswitch_67
        0x7 -> :sswitch_78
        0x8 -> :sswitch_89
        0x9 -> :sswitch_9b
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method

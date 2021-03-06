.class public abstract Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService$Stub;
.super Landroid/os/Binder;
.source "IAreaMailService.java"

# interfaces
.implements Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.nttdocomo.android.areamail.service.aidl.IAreaMailService"

.field static final TRANSACTION_disableAreaMailService:I = 0x2

.field static final TRANSACTION_enableAreaMailService:I = 0x1

.field static final TRANSACTION_registerMessageId:I = 0x3

.field static final TRANSACTION_registerNotificationListener:I = 0x8

.field static final TRANSACTION_registerSettingListener:I = 0xa

.field static final TRANSACTION_startNotificationByCount:I = 0x5

.field static final TRANSACTION_startNotificationByTime:I = 0x6

.field static final TRANSACTION_stopNotification:I = 0x7

.field static final TRANSACTION_unregisterMessageId:I = 0x4

.field static final TRANSACTION_unregisterNotificationListener:I = 0x9

.field static final TRANSACTION_unregisterSettingListener:I = 0xb


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.nttdocomo.android.areamail.service.aidl.IAreaMailService"

    invoke-virtual {p0, p0, v0}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService;
    .registers 3
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v1, 0x0

    .line 30
    :goto_3
    return-object v1

    .line 26
    :cond_4
    const-string v1, "com.nttdocomo.android.areamail.service.aidl.IAreaMailService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService;

    if-eqz v1, :cond_14

    .line 28
    check-cast v0, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
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
    const/4 v3, 0x1

    const-string v4, "com.nttdocomo.android.areamail.service.aidl.IAreaMailService"

    .line 38
    sparse-switch p1, :sswitch_data_de

    .line 143
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_a
    return v2

    .line 42
    :sswitch_b
    const-string v2, "com.nttdocomo.android.areamail.service.aidl.IAreaMailService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 43
    goto :goto_a

    .line 47
    :sswitch_12
    const-string v2, "com.nttdocomo.android.areamail.service.aidl.IAreaMailService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService$Stub;->enableAreaMailService()V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 50
    goto :goto_a

    .line 54
    :sswitch_1f
    const-string v2, "com.nttdocomo.android.areamail.service.aidl.IAreaMailService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService$Stub;->disableAreaMailService()V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 57
    goto :goto_a

    .line 61
    :sswitch_2c
    const-string v2, "com.nttdocomo.android.areamail.service.aidl.IAreaMailService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 64
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService$Stub;->registerMessageId(I)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 66
    goto :goto_a

    .line 70
    .end local v0           #_arg0:I
    :sswitch_3d
    const-string v2, "com.nttdocomo.android.areamail.service.aidl.IAreaMailService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 73
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService$Stub;->unregisterMessageId(I)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 75
    goto :goto_a

    .line 79
    .end local v0           #_arg0:I
    :sswitch_4e
    const-string v2, "com.nttdocomo.android.areamail.service.aidl.IAreaMailService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 83
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 84
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService$Stub;->startNotificationByCount(II)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 86
    goto :goto_a

    .line 90
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_63
    const-string v2, "com.nttdocomo.android.areamail.service.aidl.IAreaMailService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 94
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 95
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService$Stub;->startNotificationByTime(II)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 97
    goto :goto_a

    .line 101
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_78
    const-string v2, "com.nttdocomo.android.areamail.service.aidl.IAreaMailService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService$Stub;->stopNotification()V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 104
    goto :goto_a

    .line 108
    :sswitch_85
    const-string v2, "com.nttdocomo.android.areamail.service.aidl.IAreaMailService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailNotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailNotificationListener;

    move-result-object v0

    .line 111
    .local v0, _arg0:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailNotificationListener;
    invoke-virtual {p0, v0}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService$Stub;->registerNotificationListener(Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailNotificationListener;)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 113
    goto/16 :goto_a

    .line 117
    .end local v0           #_arg0:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailNotificationListener;
    :sswitch_9b
    const-string v2, "com.nttdocomo.android.areamail.service.aidl.IAreaMailService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailNotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailNotificationListener;

    move-result-object v0

    .line 120
    .restart local v0       #_arg0:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailNotificationListener;
    invoke-virtual {p0, v0}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService$Stub;->unregisterNotificationListener(Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailNotificationListener;)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 122
    goto/16 :goto_a

    .line 126
    .end local v0           #_arg0:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailNotificationListener;
    :sswitch_b1
    const-string v2, "com.nttdocomo.android.areamail.service.aidl.IAreaMailService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;

    move-result-object v0

    .line 129
    .local v0, _arg0:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;
    invoke-virtual {p0, v0}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService$Stub;->registerSettingListener(Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 131
    goto/16 :goto_a

    .line 135
    .end local v0           #_arg0:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;
    :sswitch_c7
    const-string v2, "com.nttdocomo.android.areamail.service.aidl.IAreaMailService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;

    move-result-object v0

    .line 138
    .restart local v0       #_arg0:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;
    invoke-virtual {p0, v0}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService$Stub;->unregisterSettingListener(Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;)V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 140
    goto/16 :goto_a

    .line 38
    nop

    :sswitch_data_de
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_1f
        0x3 -> :sswitch_2c
        0x4 -> :sswitch_3d
        0x5 -> :sswitch_4e
        0x6 -> :sswitch_63
        0x7 -> :sswitch_78
        0x8 -> :sswitch_85
        0x9 -> :sswitch_9b
        0xa -> :sswitch_b1
        0xb -> :sswitch_c7
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method

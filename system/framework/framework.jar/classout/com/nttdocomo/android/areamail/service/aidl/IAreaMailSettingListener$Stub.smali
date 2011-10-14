.class public abstract Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener$Stub;
.super Landroid/os/Binder;
.source "IAreaMailSettingListener.java"

# interfaces
.implements Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.nttdocomo.android.areamail.service.aidl.IAreaMailSettingListener"

.field static final TRANSACTION_onResult:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.nttdocomo.android.areamail.service.aidl.IAreaMailSettingListener"

    invoke-virtual {p0, p0, v0}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;
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
    const-string v1, "com.nttdocomo.android.areamail.service.aidl.IAreaMailSettingListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;

    if-eqz v1, :cond_14

    .line 28
    check-cast v0, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 11
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
    const/4 v4, 0x1

    const-string v5, "com.nttdocomo.android.areamail.service.aidl.IAreaMailSettingListener"

    .line 38
    sparse-switch p1, :sswitch_data_32

    .line 59
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_a
    return v3

    .line 42
    :sswitch_b
    const-string v3, "com.nttdocomo.android.areamail.service.aidl.IAreaMailSettingListener"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 43
    goto :goto_a

    .line 47
    :sswitch_12
    const-string v3, "com.nttdocomo.android.areamail.service.aidl.IAreaMailSettingListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 51
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2e

    move v1, v4

    .line 53
    .local v1, _arg1:Z
    :goto_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 54
    .local v2, _arg2:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener$Stub;->onResult(IZI)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 56
    goto :goto_a

    .line 51
    .end local v1           #_arg1:Z
    .end local v2           #_arg2:I
    :cond_2e
    const/4 v3, 0x0

    move v1, v3

    goto :goto_22

    .line 38
    nop

    :sswitch_data_32
    .sparse-switch
        0x1 -> :sswitch_12
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method

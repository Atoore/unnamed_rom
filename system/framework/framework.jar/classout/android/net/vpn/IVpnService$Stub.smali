.class public abstract Landroid/net/vpn/IVpnService$Stub;
.super Landroid/os/Binder;
.source "IVpnService.java"

# interfaces
.implements Landroid/net/vpn/IVpnService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vpn/IVpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/vpn/IVpnService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.vpn.IVpnService"

.field static final TRANSACTION_checkStatus:I = 0x3

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_disconnect:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.net.vpn.IVpnService"

    invoke-virtual {p0, p0, v0}, Landroid/net/vpn/IVpnService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/vpn/IVpnService;
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
    const-string v1, "android.net.vpn.IVpnService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/vpn/IVpnService;

    if-eqz v1, :cond_14

    .line 32
    check-cast v0, Landroid/net/vpn/IVpnService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 34
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/net/vpn/IVpnService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/vpn/IVpnService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 12
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
    const/4 v5, 0x1

    const-string v6, "android.net.vpn.IVpnService"

    .line 42
    sparse-switch p1, :sswitch_data_6a

    .line 90
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_a
    return v4

    .line 46
    :sswitch_b
    const-string v4, "android.net.vpn.IVpnService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 47
    goto :goto_a

    .line 51
    :sswitch_12
    const-string v4, "android.net.vpn.IVpnService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3c

    .line 54
    sget-object v4, Landroid/net/vpn/VpnProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/vpn/VpnProfile;

    .line 60
    .local v0, _arg0:Landroid/net/vpn/VpnProfile;
    :goto_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/vpn/IVpnService$Stub;->connect(Landroid/net/vpn/VpnProfile;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 64
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v3, :cond_3e

    move v4, v5

    :goto_37
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 66
    goto :goto_a

    .line 57
    .end local v0           #_arg0:Landroid/net/vpn/VpnProfile;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Ljava/lang/String;
    .end local v3           #_result:Z
    :cond_3c
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/vpn/VpnProfile;
    goto :goto_25

    .line 65
    .restart local v1       #_arg1:Ljava/lang/String;
    .restart local v2       #_arg2:Ljava/lang/String;
    .restart local v3       #_result:Z
    :cond_3e
    const/4 v4, 0x0

    goto :goto_37

    .line 70
    .end local v0           #_arg0:Landroid/net/vpn/VpnProfile;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_40
    const-string v4, "android.net.vpn.IVpnService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Landroid/net/vpn/IVpnService$Stub;->disconnect()V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 73
    goto :goto_a

    .line 77
    :sswitch_4d
    const-string v4, "android.net.vpn.IVpnService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_68

    .line 80
    sget-object v4, Landroid/net/vpn/VpnProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/vpn/VpnProfile;

    .line 85
    .restart local v0       #_arg0:Landroid/net/vpn/VpnProfile;
    :goto_60
    invoke-virtual {p0, v0}, Landroid/net/vpn/IVpnService$Stub;->checkStatus(Landroid/net/vpn/VpnProfile;)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 87
    goto :goto_a

    .line 83
    .end local v0           #_arg0:Landroid/net/vpn/VpnProfile;
    :cond_68
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/vpn/VpnProfile;
    goto :goto_60

    .line 42
    :sswitch_data_6a
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_40
        0x3 -> :sswitch_4d
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method

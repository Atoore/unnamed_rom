.class public abstract Landroid/util/IGateLoggerSettingsService$Stub;
.super Landroid/os/Binder;
.source "IGateLoggerSettingsService.java"

# interfaces
.implements Landroid/util/IGateLoggerSettingsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/IGateLoggerSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/IGateLoggerSettingsService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.util.IGateLoggerSettingsService"

.field static final TRANSACTION_getGateFilter:I = 0x2

.field static final TRANSACTION_isGateLoggerEnabled:I = 0x1

.field static final TRANSACTION_isLcdTextOn:I = 0x3

.field static final TRANSACTION_saveGateSettings:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.util.IGateLoggerSettingsService"

    invoke-virtual {p0, p0, v0}, Landroid/util/IGateLoggerSettingsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/util/IGateLoggerSettingsService;
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
    const-string v1, "android.util.IGateLoggerSettingsService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/util/IGateLoggerSettingsService;

    if-eqz v1, :cond_14

    .line 28
    check-cast v0, Landroid/util/IGateLoggerSettingsService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/util/IGateLoggerSettingsService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/util/IGateLoggerSettingsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 13
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
    const/4 v7, 0x0

    const/4 v5, 0x1

    const-string v6, "android.util.IGateLoggerSettingsService"

    .line 38
    sparse-switch p1, :sswitch_data_74

    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_b
    return v4

    .line 42
    :sswitch_c
    const-string v4, "android.util.IGateLoggerSettingsService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 43
    goto :goto_b

    .line 47
    :sswitch_13
    const-string v4, "android.util.IGateLoggerSettingsService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Landroid/util/IGateLoggerSettingsService$Stub;->isGateLoggerEnabled()Z

    move-result v3

    .line 49
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v3, :cond_27

    move v4, v5

    :goto_22
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 51
    goto :goto_b

    :cond_27
    move v4, v7

    .line 50
    goto :goto_22

    .line 55
    .end local v3           #_result:Z
    :sswitch_29
    const-string v4, "android.util.IGateLoggerSettingsService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Landroid/util/IGateLoggerSettingsService$Stub;->getGateFilter()Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 59
    goto :goto_b

    .line 63
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_3a
    const-string v4, "android.util.IGateLoggerSettingsService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Landroid/util/IGateLoggerSettingsService$Stub;->isLcdTextOn()Z

    move-result v3

    .line 65
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    if-eqz v3, :cond_4e

    move v4, v5

    :goto_49
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 67
    goto :goto_b

    :cond_4e
    move v4, v7

    .line 66
    goto :goto_49

    .line 71
    .end local v3           #_result:Z
    :sswitch_50
    const-string v4, "android.util.IGateLoggerSettingsService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6f

    move v0, v5

    .line 75
    .local v0, _arg0:Z
    :goto_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_71

    move v1, v5

    .line 77
    .local v1, _arg1:Z
    :goto_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/util/IGateLoggerSettingsService$Stub;->saveGateSettings(ZZLjava/lang/String;)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 80
    goto :goto_b

    .end local v0           #_arg0:Z
    .end local v1           #_arg1:Z
    .end local v2           #_arg2:Ljava/lang/String;
    :cond_6f
    move v0, v7

    .line 73
    goto :goto_5c

    .restart local v0       #_arg0:Z
    :cond_71
    move v1, v7

    .line 75
    goto :goto_63

    .line 38
    nop

    :sswitch_data_74
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_29
        0x3 -> :sswitch_3a
        0x4 -> :sswitch_50
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method

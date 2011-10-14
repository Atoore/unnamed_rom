.class public abstract Landroid/app/IInstrumentationWatcher$Stub;
.super Landroid/os/Binder;
.source "IInstrumentationWatcher.java"

# interfaces
.implements Landroid/app/IInstrumentationWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IInstrumentationWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IInstrumentationWatcher$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IInstrumentationWatcher"

.field static final TRANSACTION_instrumentationFinished:I = 0x2

.field static final TRANSACTION_instrumentationStatus:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.app.IInstrumentationWatcher"

    invoke-virtual {p0, p0, v0}, Landroid/app/IInstrumentationWatcher$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;
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
    const-string v1, "android.app.IInstrumentationWatcher"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/IInstrumentationWatcher;

    if-eqz v1, :cond_14

    .line 29
    check-cast v0, Landroid/app/IInstrumentationWatcher;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 31
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/app/IInstrumentationWatcher$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IInstrumentationWatcher$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v5, "android.app.IInstrumentationWatcher"

    .line 39
    sparse-switch p1, :sswitch_data_6e

    .line 91
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_a
    return v3

    .line 43
    :sswitch_b
    const-string v3, "android.app.IInstrumentationWatcher"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 44
    goto :goto_a

    .line 48
    :sswitch_12
    const-string v3, "android.app.IInstrumentationWatcher"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3c

    .line 51
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 57
    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 59
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3e

    .line 60
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 65
    .local v2, _arg2:Landroid/os/Bundle;
    :goto_37
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/IInstrumentationWatcher$Stub;->instrumentationStatus(Landroid/content/ComponentName;ILandroid/os/Bundle;)V

    move v3, v4

    .line 66
    goto :goto_a

    .line 54
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    .end local v2           #_arg2:Landroid/os/Bundle;
    :cond_3c
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_25

    .line 63
    .restart local v1       #_arg1:I
    :cond_3e
    const/4 v2, 0x0

    .restart local v2       #_arg2:Landroid/os/Bundle;
    goto :goto_37

    .line 70
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    .end local v2           #_arg2:Landroid/os/Bundle;
    :sswitch_40
    const-string v3, "android.app.IInstrumentationWatcher"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6a

    .line 73
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 79
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 81
    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6c

    .line 82
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 87
    .restart local v2       #_arg2:Landroid/os/Bundle;
    :goto_65
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/IInstrumentationWatcher$Stub;->instrumentationFinished(Landroid/content/ComponentName;ILandroid/os/Bundle;)V

    move v3, v4

    .line 88
    goto :goto_a

    .line 76
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    .end local v2           #_arg2:Landroid/os/Bundle;
    :cond_6a
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_53

    .line 85
    .restart local v1       #_arg1:I
    :cond_6c
    const/4 v2, 0x0

    .restart local v2       #_arg2:Landroid/os/Bundle;
    goto :goto_65

    .line 39
    :sswitch_data_6e
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_40
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method

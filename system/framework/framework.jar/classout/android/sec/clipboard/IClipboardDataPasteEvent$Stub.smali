.class public abstract Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;
.super Landroid/os/Binder;
.source "IClipboardDataPasteEvent.java"

# interfaces
.implements Landroid/sec/clipboard/IClipboardDataPasteEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/IClipboardDataPasteEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.sec.clipboard.IClipboardDataPasteEvent"

.field static final TRANSACTION_onClipboardDataPaste:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.sec.clipboard.IClipboardDataPasteEvent"

    invoke-virtual {p0, p0, v0}, Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardDataPasteEvent;
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
    const-string v1, "android.sec.clipboard.IClipboardDataPasteEvent"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/sec/clipboard/IClipboardDataPasteEvent;

    if-eqz v1, :cond_14

    .line 28
    check-cast v0, Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v3, "android.sec.clipboard.IClipboardDataPasteEvent"

    .line 38
    sparse-switch p1, :sswitch_data_30

    .line 60
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_a
    return v1

    .line 42
    :sswitch_b
    const-string v1, "android.sec.clipboard.IClipboardDataPasteEvent"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 43
    goto :goto_a

    .line 47
    :sswitch_12
    const-string v1, "android.sec.clipboard.IClipboardDataPasteEvent"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2d

    .line 50
    sget-object v1, Landroid/sec/clipboard/data/ClipboardData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/ClipboardData;

    .line 55
    .local v0, _arg0:Landroid/sec/clipboard/data/ClipboardData;
    :goto_25
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;->onClipboardDataPaste(Landroid/sec/clipboard/data/ClipboardData;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    .line 57
    goto :goto_a

    .line 53
    .end local v0           #_arg0:Landroid/sec/clipboard/data/ClipboardData;
    :cond_2d
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_25

    .line 38
    nop

    :sswitch_data_30
    .sparse-switch
        0x1 -> :sswitch_12
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method

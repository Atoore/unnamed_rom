.class public abstract Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub;
.super Landroid/os/Binder;
.source "IClipboardWorkingFormUiInterface.java"

# interfaces
.implements Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.sec.clipboard.IClipboardWorkingFormUiInterface"

.field static final TRANSACTION_setClipboardDataListChange:I = 0x1

.field static final TRANSACTION_setClipboardDataMgr:I = 0x2

.field static final TRANSACTION_setClipboardDataUiEvent:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.sec.clipboard.IClipboardWorkingFormUiInterface"

    invoke-virtual {p0, p0, v0}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
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
    const-string v1, "android.sec.clipboard.IClipboardWorkingFormUiInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    if-eqz v1, :cond_14

    .line 31
    check-cast v0, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 33
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v3, "android.sec.clipboard.IClipboardWorkingFormUiInterface"

    .line 41
    sparse-switch p1, :sswitch_data_4a

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_a
    return v1

    .line 45
    :sswitch_b
    const-string v1, "android.sec.clipboard.IClipboardWorkingFormUiInterface"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 46
    goto :goto_a

    .line 50
    :sswitch_12
    const-string v1, "android.sec.clipboard.IClipboardWorkingFormUiInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub;->setClipboardDataListChange()V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    .line 53
    goto :goto_a

    .line 57
    :sswitch_1f
    const-string v1, "android.sec.clipboard.IClipboardWorkingFormUiInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/sec/clipboard/data/IClipboardDataList$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/data/IClipboardDataList;

    move-result-object v0

    .line 60
    .local v0, _arg0:Landroid/sec/clipboard/data/IClipboardDataList;
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub;->setClipboardDataMgr(Landroid/sec/clipboard/data/IClipboardDataList;)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    .line 62
    goto :goto_a

    .line 66
    .end local v0           #_arg0:Landroid/sec/clipboard/data/IClipboardDataList;
    :sswitch_34
    const-string v1, "android.sec.clipboard.IClipboardWorkingFormUiInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/sec/clipboard/IClipboardDataUiEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardDataUiEvent;

    move-result-object v0

    .line 69
    .local v0, _arg0:Landroid/sec/clipboard/IClipboardDataUiEvent;
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub;->setClipboardDataUiEvent(Landroid/sec/clipboard/IClipboardDataUiEvent;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    .line 71
    goto :goto_a

    .line 41
    nop

    :sswitch_data_4a
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_1f
        0x3 -> :sswitch_34
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method

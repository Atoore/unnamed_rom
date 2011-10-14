.class public abstract Lcom/android/internal/app/IUsageStats$Stub;
.super Landroid/os/Binder;
.source "IUsageStats.java"

# interfaces
.implements Lcom/android/internal/app/IUsageStats;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IUsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IUsageStats$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IUsageStats"

.field static final TRANSACTION_getAllPkgUsageStats:I = 0x5

.field static final TRANSACTION_getPkgUsageStats:I = 0x4

.field static final TRANSACTION_noteLaunchTime:I = 0x3

.field static final TRANSACTION_notePauseComponent:I = 0x2

.field static final TRANSACTION_noteResumeComponent:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.internal.app.IUsageStats"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IUsageStats$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IUsageStats;
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
    const-string v1, "com.android.internal.app.IUsageStats"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/app/IUsageStats;

    if-eqz v1, :cond_14

    .line 28
    check-cast v0, Lcom/android/internal/app/IUsageStats;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/android/internal/app/IUsageStats$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IUsageStats$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v5, "com.android.internal.app.IUsageStats"

    .line 38
    sparse-switch p1, :sswitch_data_ac

    .line 119
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_a
    return v3

    .line 42
    :sswitch_b
    const-string v3, "com.android.internal.app.IUsageStats"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 43
    goto :goto_a

    .line 47
    :sswitch_12
    const-string v3, "com.android.internal.app.IUsageStats"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2d

    .line 50
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 55
    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_25
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IUsageStats$Stub;->noteResumeComponent(Landroid/content/ComponentName;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 57
    goto :goto_a

    .line 53
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :cond_2d
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_25

    .line 61
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_2f
    const-string v3, "com.android.internal.app.IUsageStats"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4a

    .line 64
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 69
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_42
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IUsageStats$Stub;->notePauseComponent(Landroid/content/ComponentName;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 71
    goto :goto_a

    .line 67
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :cond_4a
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_42

    .line 75
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_4c
    const-string v3, "com.android.internal.app.IUsageStats"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6b

    .line 78
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 84
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 85
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/IUsageStats$Stub;->noteLaunchTime(Landroid/content/ComponentName;I)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 87
    goto :goto_a

    .line 81
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    :cond_6b
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_5f

    .line 91
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_6d
    const-string v3, "com.android.internal.app.IUsageStats"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_92

    .line 94
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 99
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_80
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IUsageStats$Stub;->getPkgUsageStats(Landroid/content/ComponentName;)Lcom/android/internal/os/PkgUsageStats;

    move-result-object v2

    .line 100
    .local v2, _result:Lcom/android/internal/os/PkgUsageStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v2, :cond_94

    .line 102
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    invoke-virtual {v2, p3, v4}, Lcom/android/internal/os/PkgUsageStats;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_8f
    move v3, v4

    .line 108
    goto/16 :goto_a

    .line 97
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_result:Lcom/android/internal/os/PkgUsageStats;
    :cond_92
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_80

    .line 106
    .restart local v2       #_result:Lcom/android/internal/os/PkgUsageStats;
    :cond_94
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8f

    .line 112
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_result:Lcom/android/internal/os/PkgUsageStats;
    :sswitch_99
    const-string v3, "com.android.internal.app.IUsageStats"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/internal/app/IUsageStats$Stub;->getAllPkgUsageStats()[Lcom/android/internal/os/PkgUsageStats;

    move-result-object v2

    .line 114
    .local v2, _result:[Lcom/android/internal/os/PkgUsageStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v2, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    move v3, v4

    .line 116
    goto/16 :goto_a

    .line 38
    nop

    :sswitch_data_ac
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_2f
        0x3 -> :sswitch_4c
        0x4 -> :sswitch_6d
        0x5 -> :sswitch_99
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method

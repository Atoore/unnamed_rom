.class Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAreaMailSettingListener.java"

# interfaces
.implements Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .parameter "remote"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 67
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    const-string v0, "com.nttdocomo.android.areamail.service.aidl.IAreaMailSettingListener"

    return-object v0
.end method

.method public onResult(IZI)V
    .registers 9
    .parameter "request"
    .parameter "result"
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 78
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 79
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 81
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_a
    const-string v2, "com.nttdocomo.android.areamail.service.aidl.IAreaMailSettingListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    if-eqz p2, :cond_2c

    move v2, v4

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget-object v2, p0, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 86
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_a .. :try_end_25} :catchall_2e

    .line 89
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 90
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 92
    return-void

    :cond_2c
    move v2, v3

    .line 83
    goto :goto_15

    .line 89
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 90
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

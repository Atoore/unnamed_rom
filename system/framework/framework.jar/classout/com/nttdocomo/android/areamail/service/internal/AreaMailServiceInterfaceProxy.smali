.class public Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterfaceProxy;
.super Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService$Stub;
.source "AreaMailServiceInterfaceProxy.java"


# instance fields
.field private mAreaMailInterface:Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;)V
    .registers 3
    .parameter "areaMailInterface"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService$Stub;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterfaceProxy;->mAreaMailInterface:Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;

    .line 35
    const-string v0, "areamail"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 36
    return-void
.end method


# virtual methods
.method public disableAreaMailService()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterfaceProxy;->mAreaMailInterface:Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;

    if-eqz v0, :cond_9

    .line 61
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterfaceProxy;->mAreaMailInterface:Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;

    invoke-virtual {v0}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;->disableAreaMailService()V

    .line 63
    :cond_9
    return-void
.end method

.method public enableAreaMailService()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterfaceProxy;->mAreaMailInterface:Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;

    if-eqz v0, :cond_9

    .line 52
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterfaceProxy;->mAreaMailInterface:Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;

    invoke-virtual {v0}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;->enableAreaMailService()V

    .line 54
    :cond_9
    return-void
.end method

.method public registerMessageId(I)V
    .registers 3
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterfaceProxy;->mAreaMailInterface:Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;

    if-eqz v0, :cond_9

    .line 70
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterfaceProxy;->mAreaMailInterface:Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;->registerMessageId(I)V

    .line 72
    :cond_9
    return-void
.end method

.method public registerNotificationListener(Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailNotificationListener;)V
    .registers 3
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterfaceProxy;->mAreaMailInterface:Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;

    if-eqz v0, :cond_9

    .line 118
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterfaceProxy;->mAreaMailInterface:Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;->registerNotificationListener(Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailNotificationListener;)V

    .line 120
    :cond_9
    return-void
.end method

.method public registerSettingListener(Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;)V
    .registers 3
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterfaceProxy;->mAreaMailInterface:Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;

    if-eqz v0, :cond_9

    .line 138
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterfaceProxy;->mAreaMailInterface:Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;->registerSettingListener(Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;)V

    .line 140
    :cond_9
    return-void
.end method

.method public setAreaMailServiceInterface(Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;)V
    .registers 2
    .parameter "areaMailInterface"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterfaceProxy;->mAreaMailInterface:Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;

    .line 45
    return-void
.end method

.method public startNotificationByCount(II)V
    .registers 4
    .parameter "type"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterfaceProxy;->mAreaMailInterface:Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;

    if-eqz v0, :cond_9

    .line 89
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterfaceProxy;->mAreaMailInterface:Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;

    invoke-virtual {v0, p1, p2}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;->startNotificationByCount(II)V

    .line 91
    :cond_9
    return-void
.end method

.method public startNotificationByTime(II)V
    .registers 4
    .parameter "type"
    .parameter "time"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterfaceProxy;->mAreaMailInterface:Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;

    if-eqz v0, :cond_9

    .line 99
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterfaceProxy;->mAreaMailInterface:Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;

    invoke-virtual {v0, p1, p2}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;->startNotificationByTime(II)V

    .line 101
    :cond_9
    return-void
.end method

.method public stopNotification()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterfaceProxy;->mAreaMailInterface:Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;

    if-eqz v0, :cond_9

    .line 108
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterfaceProxy;->mAreaMailInterface:Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;

    invoke-virtual {v0}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;->stopNotification()V

    .line 110
    :cond_9
    return-void
.end method

.method public unregisterMessageId(I)V
    .registers 3
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterfaceProxy;->mAreaMailInterface:Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;

    if-eqz v0, :cond_9

    .line 79
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterfaceProxy;->mAreaMailInterface:Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;->unregisterMessageId(I)V

    .line 81
    :cond_9
    return-void
.end method

.method public unregisterNotificationListener(Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailNotificationListener;)V
    .registers 3
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterfaceProxy;->mAreaMailInterface:Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;

    if-eqz v0, :cond_9

    .line 128
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterfaceProxy;->mAreaMailInterface:Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;->unregisterNotificationListener(Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailNotificationListener;)V

    .line 130
    :cond_9
    return-void
.end method

.method public unregisterSettingListener(Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;)V
    .registers 3
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterfaceProxy;->mAreaMailInterface:Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;

    if-eqz v0, :cond_9

    .line 148
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterfaceProxy;->mAreaMailInterface:Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;->unregisterSettingListener(Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;)V

    .line 150
    :cond_9
    return-void
.end method

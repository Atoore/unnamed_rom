.class public Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;
.super Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService$Stub;
.source "AreaMailServiceInterface.java"


# instance fields
.field private mAreaMailService:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;)V
    .registers 4
    .parameter "phone"
    .parameter "areaMailService"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailService$Stub;-><init>()V

    .line 39
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;->mAreaMailService:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;

    .line 41
    return-void
.end method


# virtual methods
.method public disableAreaMailService()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;->mContext:Landroid/content/Context;

    const-string v1, "com.nttdocomo.android.permission.areamail.AREAMAIL_SERVICE"

    const-string v2, "Disable AreaMail service"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;->mAreaMailService:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;

    invoke-virtual {v0}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->disableAreaMailService()V

    .line 61
    return-void
.end method

.method public enableAreaMailService()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;->mContext:Landroid/content/Context;

    const-string v1, "com.nttdocomo.android.permission.areamail.AREAMAIL_SERVICE"

    const-string v2, "Enable AreaMail service"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;->mAreaMailService:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;

    invoke-virtual {v0}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->enableAreaMailService()V

    .line 51
    return-void
.end method

.method public registerMessageId(I)V
    .registers 5
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;->mContext:Landroid/content/Context;

    const-string v1, "com.nttdocomo.android.permission.areamail.AREAMAIL_SERVICE"

    const-string v2, "Register AreaMail message ID"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;->mAreaMailService:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->registerMessageId(I)V

    .line 71
    return-void
.end method

.method public registerNotificationListener(Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailNotificationListener;)V
    .registers 5
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;->mContext:Landroid/content/Context;

    const-string v1, "com.nttdocomo.android.permission.areamail.AREAMAIL_SERVICE"

    const-string v2, "Register notification listener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;->mAreaMailService:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;

    invoke-virtual {v0}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->getNotificationControl()Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->registerListener(Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailNotificationListener;)V

    .line 126
    return-void
.end method

.method public registerSettingListener(Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;)V
    .registers 5
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;->mContext:Landroid/content/Context;

    const-string v1, "com.nttdocomo.android.permission.areamail.AREAMAIL_SERVICE"

    const-string v2, "Register setting listener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;->mAreaMailService:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->registerListener(Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;)V

    .line 148
    return-void
.end method

.method public startNotificationByCount(II)V
    .registers 6
    .parameter "type"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;->mContext:Landroid/content/Context;

    const-string v1, "com.nttdocomo.android.permission.areamail.AREAMAIL_SERVICE"

    const-string v2, "Start AreaMail notification by count"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;->mAreaMailService:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;

    invoke-virtual {v0}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->getNotificationControl()Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->startNotificationByCount(II)V

    .line 93
    return-void
.end method

.method public startNotificationByTime(II)V
    .registers 6
    .parameter "type"
    .parameter "time"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;->mContext:Landroid/content/Context;

    const-string v1, "com.nttdocomo.android.permission.areamail.AREAMAIL_SERVICE"

    const-string v2, "Start AreaMail notification by time"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;->mAreaMailService:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;

    invoke-virtual {v0}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->getNotificationControl()Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->startNotificationByTime(II)V

    .line 104
    return-void
.end method

.method public stopNotification()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;->mContext:Landroid/content/Context;

    const-string v1, "com.nttdocomo.android.permission.areamail.AREAMAIL_SERVICE"

    const-string v2, "Stop AreaMail notification"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;->mAreaMailService:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;

    invoke-virtual {v0}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->getNotificationControl()Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->stopNotification()V

    .line 114
    return-void
.end method

.method public unregisterMessageId(I)V
    .registers 5
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;->mContext:Landroid/content/Context;

    const-string v1, "com.nttdocomo.android.permission.areamail.AREAMAIL_SERVICE"

    const-string v2, "Unregister AreaMail message ID"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;->mAreaMailService:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->unregisterMessageId(I)V

    .line 82
    return-void
.end method

.method public unregisterNotificationListener(Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailNotificationListener;)V
    .registers 5
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;->mContext:Landroid/content/Context;

    const-string v1, "com.nttdocomo.android.permission.areamail.AREAMAIL_SERVICE"

    const-string v2, "Unregister notification listener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;->mAreaMailService:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;

    invoke-virtual {v0}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->getNotificationControl()Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->unregisterListener(Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailNotificationListener;)V

    .line 137
    return-void
.end method

.method public unregisterSettingListener(Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;)V
    .registers 5
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;->mContext:Landroid/content/Context;

    const-string v1, "com.nttdocomo.android.permission.areamail.AREAMAIL_SERVICE"

    const-string v2, "Unregister setting listener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailServiceInterface;->mAreaMailService:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->unregisterListener(Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;)V

    .line 159
    return-void
.end method

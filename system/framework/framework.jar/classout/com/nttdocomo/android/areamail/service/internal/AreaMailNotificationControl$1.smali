.class Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl$1;
.super Ljava/util/TimerTask;
.source "AreaMailNotificationControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->startNotificationByTime(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;


# direct methods
.method constructor <init>(Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;)V
    .registers 2
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl$1;->this$0:Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 223
    iget-object v1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl$1;->this$0:Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;

    #calls: Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->endNotification()Z
    invoke-static {v1}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->access$100(Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;)Z

    move-result v0

    .line 224
    .local v0, ret:Z
    iget-object v1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl$1;->this$0:Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;

    #calls: Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->notifyOnComplete(Z)V
    invoke-static {v1, v0}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->access$200(Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;Z)V

    .line 225
    return-void
.end method

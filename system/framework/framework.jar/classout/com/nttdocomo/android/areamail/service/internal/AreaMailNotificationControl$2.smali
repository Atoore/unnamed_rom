.class Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl$2;
.super Ljava/lang/Object;
.source "AreaMailNotificationControl.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->prepareNotification(IZ)Z
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
    .line 298
    iput-object p1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl$2;->this$0:Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 6
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl$2;->this$0:Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;

    #calls: Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->endNotification()Z
    invoke-static {v0}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->access$100(Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;)Z

    .line 304
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl$2;->this$0:Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;

    const/4 v1, 0x0

    #calls: Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->notifyOnComplete(Z)V
    invoke-static {v0, v1}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->access$200(Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;Z)V

    .line 306
    const/4 v0, 0x1

    return v0
.end method

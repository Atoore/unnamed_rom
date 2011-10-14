.class Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl$3;
.super Ljava/lang/Object;
.source "AreaMailNotificationControl.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 313
    iput-object p1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl$3;->this$0:Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4
    .parameter "mp"

    .prologue
    .line 316
    iget-object v1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl$3;->this$0:Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;

    invoke-static {v1}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->access$310(Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;)I

    .line 318
    iget-object v1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl$3;->this$0:Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;

    #getter for: Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mCount:I
    invoke-static {v1}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->access$300(Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;)I

    move-result v1

    if-gtz v1, :cond_19

    .line 320
    iget-object v1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl$3;->this$0:Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;

    #calls: Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->endNotification()Z
    invoke-static {v1}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->access$100(Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;)Z

    move-result v0

    .line 321
    .local v0, ret:Z
    iget-object v1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl$3;->this$0:Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;

    #calls: Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->notifyOnComplete(Z)V
    invoke-static {v1, v0}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->access$200(Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;Z)V

    .line 326
    .end local v0           #ret:Z
    :goto_18
    return-void

    .line 324
    :cond_19
    iget-object v1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl$3;->this$0:Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;

    #getter for: Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->access$400(Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    goto :goto_18
.end method

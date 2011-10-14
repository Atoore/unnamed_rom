.class Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailSettingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AreaMailService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AreaMailSettingReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;


# direct methods
.method constructor <init>(Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;)V
    .registers 2
    .parameter

    .prologue
    .line 806
    iput-object p1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailSettingReceiver;->this$0:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string/jumbo v5, "new_value"

    .line 809
    iget-object v2, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailSettingReceiver;->this$0:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;

    #getter for: Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->DEBUG:Z
    invoke-static {v2}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->access$000(Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;)Z

    move-result v2

    if-eqz v2, :cond_2d

    const-string v2, "areamail.service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AreaMailSettingReceiver.onReceive:action["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :cond_2d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 811
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 812
    const-string/jumbo v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 813
    .local v1, stateExtra:Ljava/lang/String;
    const-string v2, "LOADED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 814
    iget-object v2, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailSettingReceiver;->this$0:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;

    #calls: Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->initialize()V
    invoke-static {v2}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->access$100(Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;)V

    .line 823
    .end local v1           #stateExtra:Ljava/lang/String;
    :cond_4d
    :goto_4d
    return-void

    .line 816
    :cond_4e
    const-string v2, "com.nttdocomo.android.areamail.RUMBLING_TIME_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 817
    iget-object v2, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailSettingReceiver;->this$0:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;

    const-string/jumbo v3, "new_value"

    iget-object v3, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailSettingReceiver;->this$0:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;

    #getter for: Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mRingTime:I
    invoke-static {v3}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->access$200(Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;)I

    move-result v3

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mRingTime:I
    invoke-static {v2, v3}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->access$202(Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;I)I

    goto :goto_4d

    .line 818
    :cond_69
    const-string v2, "com.nttdocomo.android.areamail.MANNER_MODE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_84

    .line 819
    iget-object v2, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailSettingReceiver;->this$0:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;

    const-string/jumbo v3, "new_value"

    iget-object v3, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailSettingReceiver;->this$0:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;

    #getter for: Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mEnforceRingMode:Z
    invoke-static {v3}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->access$300(Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;)Z

    move-result v3

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    #setter for: Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mEnforceRingMode:Z
    invoke-static {v2, v3}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->access$302(Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;Z)Z

    goto :goto_4d

    .line 820
    :cond_84
    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 821
    iget-object v2, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailSettingReceiver;->this$0:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;

    const-string v3, "android.media.EXTRA_RINGER_MODE"

    iget-object v4, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailSettingReceiver;->this$0:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;

    #getter for: Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mRingerMode:I
    invoke-static {v4}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->access$400(Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mRingerMode:I
    invoke-static {v2, v3}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->access$402(Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;I)I

    goto :goto_4d
.end method

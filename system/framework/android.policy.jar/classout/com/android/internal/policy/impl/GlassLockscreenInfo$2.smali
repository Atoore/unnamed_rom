.class Lcom/android/internal/policy/impl/GlassLockscreenInfo$2;
.super Landroid/content/BroadcastReceiver;
.source "GlassLockscreenInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlassLockscreenInfo;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlassLockscreenInfo;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlassLockscreenInfo;)V
    .registers 2
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo$2;->this$0:Lcom/android/internal/policy/impl/GlassLockscreenInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 151
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.sec.android.widgetapp.accuweatherdaemon.action.CHANGE_SETTING"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 153
    const-string v2, "aw_daemon_service_key_service_status"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 154
    .local v1, service_status:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo$2;->this$0:Lcom/android/internal/policy/impl/GlassLockscreenInfo;

    #getter for: Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->access$300(Lcom/android/internal/policy/impl/GlassLockscreenInfo;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo$2;->this$0:Lcom/android/internal/policy/impl/GlassLockscreenInfo;

    #getter for: Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->access$300(Lcom/android/internal/policy/impl/GlassLockscreenInfo;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x12c

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 162
    .end local v1           #service_status:I
    :cond_2a
    :goto_2a
    return-void

    .line 156
    :cond_2b
    const-string v2, "com.sec.android.widgetapp.accuweatherdaemon.action.CHANGE_WEATHER_DATA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 157
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo$2;->this$0:Lcom/android/internal/policy/impl/GlassLockscreenInfo;

    #getter for: Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->access$300(Lcom/android/internal/policy/impl/GlassLockscreenInfo;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo$2;->this$0:Lcom/android/internal/policy/impl/GlassLockscreenInfo;

    #getter for: Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->access$300(Lcom/android/internal/policy/impl/GlassLockscreenInfo;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x136

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2a

    .line 159
    :cond_49
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 160
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo$2;->this$0:Lcom/android/internal/policy/impl/GlassLockscreenInfo;

    #getter for: Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->access$300(Lcom/android/internal/policy/impl/GlassLockscreenInfo;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo$2;->this$0:Lcom/android/internal/policy/impl/GlassLockscreenInfo;

    #getter for: Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->access$300(Lcom/android/internal/policy/impl/GlassLockscreenInfo;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x140

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2a
.end method

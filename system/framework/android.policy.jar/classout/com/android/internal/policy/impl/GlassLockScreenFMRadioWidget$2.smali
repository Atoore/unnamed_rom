.class Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$2;
.super Landroid/content/BroadcastReceiver;
.source "GlassLockScreenFMRadioWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)V
    .registers 2
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 162
    const-string v7, "GlassLockScreenFMRadioWidget"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive() : intent action="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5f

    .line 164
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    const/4 v8, 0x1

    #setter for: Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mScreenOn:Z
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$102(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;Z)Z

    .line 169
    :cond_2e
    :goto_2e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, action:Ljava/lang/String;
    const/4 v5, 0x1

    .line 172
    .local v5, playing:I
    const/4 v6, 0x0

    .line 173
    .local v6, stop:I
    const-string v7, "com.android.fm.player_lock.status.on"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_72

    .line 174
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    const/4 v8, 0x1

    #setter for: Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsPlaying:Z
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$202(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;Z)Z

    .line 175
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    const/4 v8, 0x1

    #setter for: Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mServiceNumber:I
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$302(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;I)I

    .line 176
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$400(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x12c2

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v5, v6, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 177
    .local v4, msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$400(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 194
    .end local v4           #msg:Landroid/os/Message;
    :cond_5e
    :goto_5e
    return-void

    .line 165
    .end local v0           #action:Ljava/lang/String;
    .end local v5           #playing:I
    .end local v6           #stop:I
    :cond_5f
    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 166
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    const/4 v8, 0x0

    #setter for: Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mScreenOn:Z
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$102(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;Z)Z

    goto :goto_2e

    .line 178
    .restart local v0       #action:Ljava/lang/String;
    .restart local v5       #playing:I
    .restart local v6       #stop:I
    :cond_72
    const-string v7, "com.android.fm.player_lock.status.off"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9d

    .line 179
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    const/4 v8, 0x0

    #setter for: Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsPlaying:Z
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$202(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;Z)Z

    .line 180
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    const/4 v8, 0x0

    #setter for: Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mServiceNumber:I
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$302(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;I)I

    .line 181
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$400(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x12c2

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v6, v5, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 182
    .restart local v4       #msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$400(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5e

    .line 183
    .end local v4           #msg:Landroid/os/Message;
    :cond_9d
    const-string v7, "com.android.fm.player_lock.status.channel"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_ad

    const-string v7, "com.android.fm.player_lock.tune.channel"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5e

    .line 184
    :cond_ad
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    const/4 v8, 0x1

    #setter for: Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsPlaying:Z
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$202(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;Z)Z

    .line 185
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    const/4 v8, 0x1

    #setter for: Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mServiceNumber:I
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$302(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;I)I

    .line 186
    const-string v7, "freq"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, freq:Ljava/lang/String;
    const-string v7, "name"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, chName:Ljava/lang/String;
    const/4 v7, 0x2

    new-array v2, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "freq"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v7

    const/4 v7, 0x1

    const-string v8, "name"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v7

    .line 190
    .local v2, dataArray:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$400(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x12c3

    invoke-virtual {v7, v8, v5, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 191
    .restart local v4       #msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$400(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5e
.end method

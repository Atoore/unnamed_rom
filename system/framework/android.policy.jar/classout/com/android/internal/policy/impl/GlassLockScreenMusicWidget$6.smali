.class Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$6;
.super Ljava/lang/Object;
.source "GlassLockScreenMusicWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V
    .registers 2
    .parameter

    .prologue
    .line 466
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$6;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    const-string v4, "musicplayer.from"

    const-string v3, "lockscreen"

    .line 468
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$6;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #calls: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->resetMinTimer()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$500(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    .line 469
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$6;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$400(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 470
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$6;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mFFLongPressed:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$1102(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;Z)Z

    .line 471
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$6;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mServiceNumber:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_35

    .line 472
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.next"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 473
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v1, "lockscreen"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 474
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$6;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    .line 480
    :goto_34
    return-void

    .line 476
    .end local v0           #intent:Landroid/content/Intent;
    :cond_35
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.music.musicservicecommand.next"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 477
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v1, "lockscreen"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$6;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto :goto_34
.end method

.class Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$7;
.super Ljava/lang/Object;
.source "GlassLockScreenMusicWidget.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 483
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$7;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 11
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "com.android.music.musicservicecommand.ff.up"

    const-string v4, "musicplayer.from"

    const-string v3, "lockscreen"

    .line 486
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$7;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$400(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 488
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x102029f

    if-ne v1, v2, :cond_21

    .line 489
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_e0

    .line 544
    :cond_21
    :goto_21
    return v5

    .line 492
    :pswitch_22
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$7;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #calls: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->removeMinTimer()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$1200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    goto :goto_21

    .line 499
    :pswitch_28
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-nez v1, :cond_21

    .line 500
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$7;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mFFLongPressed:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$1100(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 501
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$7;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #setter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mFFLongPressed:Z
    invoke-static {v1, v5}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$1102(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;Z)Z

    .line 502
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$7;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mServiceNumber:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v1

    if-ne v1, v6, :cond_57

    .line 503
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.ff.up"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 504
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v1, "lockscreen"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$7;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto :goto_21

    .line 507
    .end local v0           #intent:Landroid/content/Intent;
    :cond_57
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.music.musicservicecommand.ff.up"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 508
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v1, "lockscreen"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$7;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto :goto_21

    .line 517
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_6b
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$7;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #calls: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->addMinTimer()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$1300(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    .line 518
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$7;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mFFLongPressed:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$1100(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 519
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$7;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #setter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mFFLongPressed:Z
    invoke-static {v1, v5}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$1102(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;Z)Z

    .line 520
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$7;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mServiceNumber:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v1

    if-ne v1, v6, :cond_99

    .line 521
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.ff.up"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 522
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v1, "lockscreen"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$7;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto :goto_21

    .line 525
    .end local v0           #intent:Landroid/content/Intent;
    :cond_99
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.music.musicservicecommand.ff.up"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 526
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v1, "lockscreen"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 527
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$7;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto/16 :goto_21

    .line 531
    .end local v0           #intent:Landroid/content/Intent;
    :cond_ae
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$7;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mServiceNumber:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v1

    if-ne v1, v6, :cond_cb

    .line 532
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.next"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 533
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v1, "lockscreen"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$7;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto/16 :goto_21

    .line 536
    .end local v0           #intent:Landroid/content/Intent;
    :cond_cb
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.music.musicservicecommand.next"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 537
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v1, "lockscreen"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$7;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto/16 :goto_21

    .line 489
    :pswitch_data_e0
    .packed-switch 0x0
        :pswitch_22
        :pswitch_6b
        :pswitch_28
        :pswitch_6b
    .end packed-switch
.end method

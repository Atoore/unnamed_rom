.class Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$10;
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
    .line 585
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$10;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "com.android.music.musicservicecommand.rew.up"

    const-string v5, "musicplayer.from"

    const-string v4, "lockscreen"

    .line 588
    const-string v1, "Nawoong"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "evnet ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$10;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$400(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 592
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x102029d

    if-ne v1, v2, :cond_3d

    .line 593
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_fc

    .line 649
    :cond_3d
    :goto_3d
    return v6

    .line 596
    :pswitch_3e
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$10;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #calls: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->removeMinTimer()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$1200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    goto :goto_3d

    .line 603
    :pswitch_44
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-nez v1, :cond_3d

    .line 604
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$10;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mREWLongPressed:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$1400(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 605
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$10;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #setter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mREWLongPressed:Z
    invoke-static {v1, v6}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$1402(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;Z)Z

    .line 606
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$10;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mServiceNumber:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v1

    if-ne v1, v7, :cond_73

    .line 607
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.rew.up"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 608
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v1, "lockscreen"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 609
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$10;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto :goto_3d

    .line 611
    .end local v0           #intent:Landroid/content/Intent;
    :cond_73
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.music.musicservicecommand.rew.up"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 612
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v1, "lockscreen"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 613
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$10;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto :goto_3d

    .line 623
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_87
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$10;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #calls: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->addMinTimer()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$1300(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    .line 624
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$10;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mREWLongPressed:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$1400(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 625
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$10;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #setter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mREWLongPressed:Z
    invoke-static {v1, v6}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$1402(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;Z)Z

    .line 626
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$10;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mServiceNumber:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v1

    if-ne v1, v7, :cond_b5

    .line 627
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.rew.up"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 628
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v1, "lockscreen"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 629
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$10;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto :goto_3d

    .line 631
    .end local v0           #intent:Landroid/content/Intent;
    :cond_b5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.music.musicservicecommand.rew.up"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 632
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v1, "lockscreen"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 633
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$10;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto/16 :goto_3d

    .line 636
    .end local v0           #intent:Landroid/content/Intent;
    :cond_ca
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$10;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mServiceNumber:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v1

    if-ne v1, v7, :cond_e7

    .line 637
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.previous"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 638
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v1, "lockscreen"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 639
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$10;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto/16 :goto_3d

    .line 641
    .end local v0           #intent:Landroid/content/Intent;
    :cond_e7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.music.musicservicecommand.previous"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 642
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v1, "lockscreen"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 643
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$10;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto/16 :goto_3d

    .line 593
    :pswitch_data_fc
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_87
        :pswitch_44
        :pswitch_87
    .end packed-switch
.end method

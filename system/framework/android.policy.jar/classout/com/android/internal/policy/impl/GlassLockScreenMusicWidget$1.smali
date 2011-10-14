.class Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$1;
.super Landroid/os/Handler;
.source "GlassLockScreenMusicWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;
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
    .line 124
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$1;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    .line 127
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3c

    .line 141
    .end local p0
    :goto_5
    return-void

    .line 129
    .restart local p0
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$1;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #calls: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setMinLayout()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$000(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    goto :goto_5

    .line 132
    :pswitch_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$1;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->handleMediaUpdate(IILandroid/net/Uri;)V

    goto :goto_5

    .line 135
    .restart local p0
    :pswitch_1a
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$1;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v3, p0, v3

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v4, p0, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->handleMediaUpdate(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 138
    .restart local p0
    :pswitch_36
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$1;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->handleStopMarquee()V

    goto :goto_5

    .line 127
    :pswitch_data_3c
    .packed-switch 0x12c1
        :pswitch_6
        :pswitch_c
        :pswitch_1a
        :pswitch_36
    .end packed-switch
.end method

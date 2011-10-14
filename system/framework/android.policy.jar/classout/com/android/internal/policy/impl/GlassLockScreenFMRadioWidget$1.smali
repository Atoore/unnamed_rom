.class Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$1;
.super Landroid/os/Handler;
.source "GlassLockScreenFMRadioWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;
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
    .line 117
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$1;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    .line 120
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3a

    .line 134
    .end local p0
    :goto_5
    return-void

    .line 122
    .restart local p0
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$1;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    #calls: Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setMinLayout()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$000(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)V

    goto :goto_5

    .line 125
    :pswitch_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$1;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->handleFMUpdate(IILjava/lang/Object;)V

    goto :goto_5

    .line 128
    :pswitch_18
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$1;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

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

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->handleFMUpdate(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 131
    .restart local p0
    :pswitch_34
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$1;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->handleStopMarquee()V

    goto :goto_5

    .line 120
    :pswitch_data_3a
    .packed-switch 0x12c1
        :pswitch_6
        :pswitch_c
        :pswitch_18
        :pswitch_34
    .end packed-switch
.end method

.class Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$1;
.super Landroid/os/Handler;
.source "GlassLockScreenMissedEventWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;)V
    .registers 2
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$1;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    .line 76
    :goto_5
    return-void

    .line 73
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$1;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->handleMissedEventUpdate()V

    goto :goto_5

    .line 71
    :pswitch_data_c
    .packed-switch 0x12c2
        :pswitch_6
    .end packed-switch
.end method

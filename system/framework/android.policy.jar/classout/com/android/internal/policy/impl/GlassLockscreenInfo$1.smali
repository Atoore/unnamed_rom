.class Lcom/android/internal/policy/impl/GlassLockscreenInfo$1;
.super Landroid/os/Handler;
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
    .line 125
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo$1;->this$0:Lcom/android/internal/policy/impl/GlassLockscreenInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 128
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_1a

    .line 139
    :goto_5
    return-void

    .line 130
    :sswitch_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo$1;->this$0:Lcom/android/internal/policy/impl/GlassLockscreenInfo;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/internal/policy/impl/GlassLockscreenInfo;->handelChangeWeatherSetting(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->access$000(Lcom/android/internal/policy/impl/GlassLockscreenInfo;I)V

    goto :goto_5

    .line 133
    :sswitch_e
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo$1;->this$0:Lcom/android/internal/policy/impl/GlassLockscreenInfo;

    #calls: Lcom/android/internal/policy/impl/GlassLockscreenInfo;->handelUpdateWeather()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->access$100(Lcom/android/internal/policy/impl/GlassLockscreenInfo;)V

    goto :goto_5

    .line 136
    :sswitch_14
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo$1;->this$0:Lcom/android/internal/policy/impl/GlassLockscreenInfo;

    #calls: Lcom/android/internal/policy/impl/GlassLockscreenInfo;->handleBootCompleted()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->access$200(Lcom/android/internal/policy/impl/GlassLockscreenInfo;)V

    goto :goto_5

    .line 128
    :sswitch_data_1a
    .sparse-switch
        0x12c -> :sswitch_6
        0x136 -> :sswitch_e
        0x140 -> :sswitch_14
    .end sparse-switch
.end method

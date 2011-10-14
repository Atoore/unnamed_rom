.class Lcom/sec/android/app/twlauncher/Launcher$BootCompleteIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BootCompleteIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 6069
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$BootCompleteIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6069
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher$BootCompleteIntentReceiver;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 6072
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$BootCompleteIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$5100(Lcom/sec/android/app/twlauncher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6073
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$BootCompleteIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$5200(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->unblockDispatchDraw()V

    .line 6074
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 6075
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$BootCompleteIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->access$5102(Lcom/sec/android/app/twlauncher/Launcher;Z)Z

    .line 6077
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$BootCompleteIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$4600(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$BootCompleteIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->start(Landroid/content/Context;Z)V

    .line 6078
    return-void
.end method

.class Lcom/sec/android/app/twlauncher/Launcher$12;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 6541
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$12;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 6543
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$12;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$6200(Lcom/sec/android/app/twlauncher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6544
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$12;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$3400(Lcom/sec/android/app/twlauncher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6545
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$12;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$5600(Lcom/sec/android/app/twlauncher/Launcher;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6550
    :cond_0
    :goto_0
    return-void

    .line 6548
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$12;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$6300(Lcom/sec/android/app/twlauncher/Launcher;)V

    goto :goto_0
.end method

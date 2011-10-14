.class Lcom/sec/android/app/twlauncher/Launcher$Delay_handler;
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
    name = "Delay_handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 911
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$Delay_handler;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 915
    const-string v0, "Launcher"

    const-string v1, "DELAY"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$Delay_handler;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$400(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 917
    return-void
.end method

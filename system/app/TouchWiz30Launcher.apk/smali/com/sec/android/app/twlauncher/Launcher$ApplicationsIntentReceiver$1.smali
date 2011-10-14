.class Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;

.field final synthetic val$packageInfo:Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5856
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver$1;->this$1:Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;

    iput-object p2, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver$1;->val$packageInfo:Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5858
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver$1;->this$1:Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver$1;->val$packageInfo:Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->removePackageBackground(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)V

    .line 5860
    return-void
.end method

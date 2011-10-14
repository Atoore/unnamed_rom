.class Lcom/sec/android/app/twlauncher/Launcher$10;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/Launcher;->triggerModelUpdate(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;

.field final synthetic val$packageInfo:Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6051
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$10;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    iput-object p2, p0, Lcom/sec/android/app/twlauncher/Launcher$10;->val$packageInfo:Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 6053
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->access$3300()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$10;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$10;->val$packageInfo:Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->updatePackageUi(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)V

    .line 6054
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$10;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$10;->val$packageInfo:Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->access$4900(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V

    .line 6055
    return-void
.end method

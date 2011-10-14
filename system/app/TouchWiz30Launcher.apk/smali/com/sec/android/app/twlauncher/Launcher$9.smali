.class Lcom/sec/android/app/twlauncher/Launcher$9;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/Launcher;->triggerModelAdd(Ljava/lang/String;)V
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
    .line 5980
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$9;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    iput-object p2, p0, Lcom/sec/android/app/twlauncher/Launcher$9;->val$packageInfo:Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5982
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->access$3300()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$9;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$9;->val$packageInfo:Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->addPackageUi(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)V

    .line 5984
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$9;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$3500(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 5985
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$9;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$3500(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setSortMethod(I)V

    .line 5988
    :cond_0
    return-void
.end method

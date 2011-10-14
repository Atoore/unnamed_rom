.class Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

.field final synthetic val$launcher:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 976
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader$1;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    iput-object p2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader$1;->val$launcher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 978
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader$1;->val$launcher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader$1;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$800(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->onApplicationsLoaded(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)V

    .line 979
    return-void
.end method

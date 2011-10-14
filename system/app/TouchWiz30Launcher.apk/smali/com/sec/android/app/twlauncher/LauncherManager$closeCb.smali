.class Lcom/sec/android/app/twlauncher/LauncherManager$closeCb;
.super Ljava/lang/Object;
.source "LauncherManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/LauncherManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "closeCb"
.end annotation


# instance fields
.field private mNewMode:I

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/LauncherManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/LauncherManager;I)V
    .locals 0
    .parameter
    .parameter "aNewMode"

    .prologue
    .line 509
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherManager$closeCb;->this$0:Lcom/sec/android/app/twlauncher/LauncherManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    iput p2, p0, Lcom/sec/android/app/twlauncher/LauncherManager$closeCb;->mNewMode:I

    .line 511
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 514
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager$closeCb;->this$0:Lcom/sec/android/app/twlauncher/LauncherManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherManager;->setVisibility(I)V

    .line 515
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager$closeCb;->this$0:Lcom/sec/android/app/twlauncher/LauncherManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherManager;->onDismiss(Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;)V

    .line 516
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager$closeCb;->this$0:Lcom/sec/android/app/twlauncher/LauncherManager;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->access$000(Lcom/sec/android/app/twlauncher/LauncherManager;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager$closeCb;->mNewMode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->enterNewMode(I)Z

    .line 517
    return-void
.end method

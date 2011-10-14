.class Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1$2;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;->createDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;)V
    .locals 0
    .parameter

    .prologue
    .line 5608
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1$2;->this$1:Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 5610
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1$2;->this$1:Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;->access$3900(Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;Z)V

    .line 5611
    return-void
.end method

.class Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 5599
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1$1;->this$1:Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "aView"

    .prologue
    .line 5601
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1$1;->this$1:Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1$1;->this$1:Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;->access$3800(Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;->access$3900(Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;Z)V

    .line 5602
    return-void
.end method

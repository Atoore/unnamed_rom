.class Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;->createDialog(II)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 5533
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog$1;->this$1:Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 5535
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog$1;->this$1:Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;->access$3700(Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;Z)V

    .line 5536
    return-void
.end method

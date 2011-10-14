.class Lcom/sec/android/app/twlauncher/Launcher$TipsDialog$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;->createDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 7788
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog$1;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 7791
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 7792
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog$1;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$3500(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)Z

    .line 7793
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog$1;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$3500(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->setSortMethod(I)V

    .line 7794
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog$1;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->saveMenuMode(I)V

    .line 7796
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog$1;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$3500(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)Z

    .line 7797
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog$1;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$3500(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->setSortMethod(I)V

    .line 7798
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog$1;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->saveMenuMode(I)V

    .line 7800
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog$1;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->removeDialog(I)V

    .line 7802
    return-void
.end method

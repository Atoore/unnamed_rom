.class Lcom/sec/android/app/twlauncher/Launcher$TextDialog$2;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->createDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/twlauncher/Launcher$TextDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Launcher$TextDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 5737
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$2;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 5739
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$2;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    iget v0, v1, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->mId:I

    .line 5740
    .local v0, id:I
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 5741
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$2;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->cancelRemovePage()V

    .line 5747
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$2;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->access$4000(Lcom/sec/android/app/twlauncher/Launcher$TextDialog;)V

    .line 5748
    return-void

    .line 5742
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 5743
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$2;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher;->access$4100(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/DragLayer;->invalidate()V

    goto :goto_0

    .line 5744
    :cond_2
    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 5745
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$2;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher;->access$3500(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->removeFolderCB(ZLcom/sec/android/app/twlauncher/UserFolderInfo;)V

    goto :goto_0
.end method

.class Lcom/sec/android/app/twlauncher/Launcher$TextDialog$3;
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
    .line 5751
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$3;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 5753
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$3;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    iget v0, v1, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->mId:I

    .line 5754
    .local v0, id:I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 5755
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$3;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher;->access$4200(Lcom/sec/android/app/twlauncher/Launcher;)Z

    .line 5764
    :cond_0
    :goto_0
    return-void

    .line 5756
    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 5757
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$3;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->menudiscard()V

    .line 5758
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$3;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->access$4000(Lcom/sec/android/app/twlauncher/Launcher$TextDialog;)V

    goto :goto_0

    .line 5759
    :cond_2
    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 5760
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$3;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->removePage()V

    goto :goto_0

    .line 5761
    :cond_3
    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 5762
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$3;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher;->access$3500(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$3;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    iget-object v3, v3, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v3}, Lcom/sec/android/app/twlauncher/Launcher;->access$4300(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->removeFolderCB(ZLcom/sec/android/app/twlauncher/UserFolderInfo;)V

    goto :goto_0
.end method

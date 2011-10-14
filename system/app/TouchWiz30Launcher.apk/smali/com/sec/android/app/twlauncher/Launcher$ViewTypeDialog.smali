.class Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewTypeDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 7717
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7717
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    return-void
.end method


# virtual methods
.method createDialog(I)Landroid/app/Dialog;
    .locals 10
    .parameter "id"

    .prologue
    const v9, 0x7f0800a9

    const v8, 0x7f0800a8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 7724
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7725
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const v4, 0x7f0800a6

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 7727
    const/4 v1, 0x0

    .line 7728
    .local v1, checked:I
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v3}, Lcom/sec/android/app/twlauncher/Launcher;->access$3500(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 7740
    :goto_0
    :pswitch_0
    sget-boolean v3, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_LISTMODE:Z

    if-eqz v3, :cond_0

    .line 7741
    const/4 v3, 0x3

    new-array v2, v3, [Ljava/lang/CharSequence;

    .line 7742
    .local v2, items:[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3, v8}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 7743
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3, v9}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 7744
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const v4, 0x7f0800aa

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 7745
    invoke-virtual {v0, v2, v1, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7752
    :goto_1
    const v3, 0x7f0800a7

    new-instance v4, Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog$1;-><init>(Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7757
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3

    .line 7730
    .end local v2           #items:[Ljava/lang/CharSequence;
    :pswitch_1
    const/4 v1, 0x0

    .line 7731
    goto :goto_0

    .line 7733
    :pswitch_2
    const/4 v1, 0x1

    .line 7734
    goto :goto_0

    .line 7736
    :pswitch_3
    const/4 v1, 0x2

    goto :goto_0

    .line 7747
    :cond_0
    new-array v2, v7, [Ljava/lang/CharSequence;

    .line 7748
    .restart local v2       #items:[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3, v8}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 7749
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3, v9}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 7750
    invoke-virtual {v0, v2, v1, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 7728
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "arg0"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 7761
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V

    .line 7762
    packed-switch p2, :pswitch_data_0

    .line 7775
    :goto_0
    return-void

    .line 7764
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$3500(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)Z

    .line 7765
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$3500(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setSortMethod(I)V

    goto :goto_0

    .line 7768
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$3500(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)Z

    .line 7769
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$3500(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->setSortMethod(I)V

    goto :goto_0

    .line 7772
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$3500(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)Z

    goto :goto_0

    .line 7762
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

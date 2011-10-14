.class Lcom/sec/android/app/twlauncher/Launcher$MenuEditDialog;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuEditDialog"
.end annotation


# instance fields
.field private mReminder:Landroid/widget/CheckBox;

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 7659
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$MenuEditDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7659
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher$MenuEditDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/sec/android/app/twlauncher/Launcher$MenuEditDialog;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7659
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher$MenuEditDialog;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method private createDialog()Landroid/app/Dialog;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 7664
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher$MenuEditDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7665
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher$MenuEditDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 7667
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f030011

    invoke-virtual {v2, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 7668
    .local v3, layout:Landroid/view/View;
    const v4, 0x7f06003a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher$MenuEditDialog;->mReminder:Landroid/widget/CheckBox;

    .line 7669
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher$MenuEditDialog;->mReminder:Landroid/widget/CheckBox;

    invoke-virtual {v4, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7671
    const v4, 0x7f080093

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 7672
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 7673
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 7674
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 7675
    const v4, 0x7f080090

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7677
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 7678
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 7679
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 7681
    return-object v1
.end method

.method private dismiss()V
    .locals 3

    .prologue
    .line 7686
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$MenuEditDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7690
    :goto_0
    return-void

    .line 7687
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 7688
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 7706
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher$MenuEditDialog;->dismiss()V

    .line 7707
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 7712
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    .line 7694
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$MenuEditDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const-string v2, "launcher"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/twlauncher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 7696
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "MenuEditDialogOnOff"

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$MenuEditDialog;->mReminder:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 7697
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 7698
    return-void

    :cond_0
    move v2, v3

    .line 7696
    goto :goto_0
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 7702
    return-void
.end method

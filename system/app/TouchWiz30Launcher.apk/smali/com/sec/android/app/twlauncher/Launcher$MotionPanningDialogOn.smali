.class Lcom/sec/android/app/twlauncher/Launcher$MotionPanningDialogOn;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotionPanningDialogOn"
.end annotation


# instance fields
.field private mReminder:Landroid/widget/CheckBox;

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 7536
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$MotionPanningDialogOn;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7536
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher$MotionPanningDialogOn;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/android/app/twlauncher/Launcher$MotionPanningDialogOn;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7536
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher$MotionPanningDialogOn;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method private createDialog()Landroid/app/Dialog;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 7542
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher$MotionPanningDialogOn;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7543
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher$MotionPanningDialogOn;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 7545
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f030014

    invoke-virtual {v2, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 7546
    .local v3, layout:Landroid/view/View;
    const v4, 0x7f060042

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher$MotionPanningDialogOn;->mReminder:Landroid/widget/CheckBox;

    .line 7547
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher$MotionPanningDialogOn;->mReminder:Landroid/widget/CheckBox;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 7549
    const v4, 0x7f08008b

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 7550
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 7551
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 7552
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 7553
    const v4, 0x7f080090

    invoke-virtual {v0, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7554
    const v4, 0x7f080091

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7556
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 7557
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 7558
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 7560
    return-object v1
.end method

.method private dismiss()V
    .locals 3

    .prologue
    .line 7565
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$MotionPanningDialogOn;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7569
    :goto_0
    return-void

    .line 7566
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 7567
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 7586
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher$MotionPanningDialogOn;->dismiss()V

    .line 7587
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v3, 0x1

    .line 7591
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$MotionPanningDialogOn;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_engine"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 7592
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$MotionPanningDialogOn;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_panning"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 7594
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7595
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7596
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$MotionPanningDialogOn;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 7597
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    .line 7573
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$MotionPanningDialogOn;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const-string v2, "launcher"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/twlauncher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 7576
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "MotionDialogOnOff"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 7577
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 7578
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 7582
    return-void
.end method

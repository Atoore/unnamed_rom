.class Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LauncherManagerYesNoDialog"
.end annotation


# instance fields
.field private mId:I

.field private mLabel:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 5519
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5519
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5519
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;->dialogRes(Z)V

    return-void
.end method

.method private dialogRes(Z)V
    .locals 3
    .parameter "aYes"

    .prologue
    .line 5560
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;->mId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/sec/android/app/twlauncher/LauncherManager;->dialogRes(IZZ)V

    .line 5562
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;->mId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5565
    :goto_0
    return-void

    .line 5563
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected createDialog(II)Landroid/app/Dialog;
    .locals 6
    .parameter "aId"
    .parameter "aMsgId"

    .prologue
    .line 5525
    iput p1, p0, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;->mId:I

    .line 5526
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const v4, 0x7f03001c

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 5527
    .local v2, layout:Landroid/view/View;
    const v3, 0x7f06000c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;->mLabel:Landroid/widget/TextView;

    .line 5528
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(I)V

    .line 5529
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5531
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 5532
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 5533
    new-instance v3, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog$1;-><init>(Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 5538
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const v4, 0x7f080075

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog$2;

    invoke-direct {v4, p0}, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog$2;-><init>(Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5543
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const v4, 0x7f080074

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog$3;

    invoke-direct {v4, p0}, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog$3;-><init>(Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5548
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 5550
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 5551
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 5552
    return-object v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const/4 v2, 0x0

    .line 5556
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;->mId:I

    invoke-virtual {v0, v1, v2, v2}, Lcom/sec/android/app/twlauncher/LauncherManager;->dialogRes(IZZ)V

    .line 5557
    return-void
.end method

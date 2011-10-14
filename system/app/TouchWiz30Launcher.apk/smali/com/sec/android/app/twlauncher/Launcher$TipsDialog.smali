.class Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;
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
    name = "TipsDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 7781
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7781
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    return-void
.end method


# virtual methods
.method createDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 7785
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7786
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const v2, 0x7f0800ad

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 7787
    const v1, 0x7f0800ac

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 7788
    const v1, 0x7f0800ae

    new-instance v2, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog$1;-><init>(Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7805
    const v1, 0x7f0800af

    new-instance v2, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog$2;-><init>(Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7810
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 7818
    return-void
.end method

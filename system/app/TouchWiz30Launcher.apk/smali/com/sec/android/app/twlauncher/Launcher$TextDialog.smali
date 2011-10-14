.class Lcom/sec/android/app/twlauncher/Launcher$TextDialog;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextDialog"
.end annotation


# instance fields
.field mId:I

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 5703
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5703
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/sec/android/app/twlauncher/Launcher$TextDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 5703
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->cleanup()V

    return-void
.end method

.method private cleanup()V
    .locals 1

    .prologue
    .line 5783
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    .line 5784
    return-void
.end method


# virtual methods
.method createDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 5708
    iput p1, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->mId:I

    .line 5709
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5711
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 5727
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 5729
    new-instance v2, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$1;-><init>(Lcom/sec/android/app/twlauncher/Launcher$TextDialog;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 5736
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const v3, 0x7f08000f

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$2;-><init>(Lcom/sec/android/app/twlauncher/Launcher$TextDialog;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5750
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const v3, 0x7f08000e

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$3;

    invoke-direct {v3, p0}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$3;-><init>(Lcom/sec/android/app/twlauncher/Launcher$TextDialog;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5768
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 5769
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 5770
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 5771
    return-object v1

    .line 5713
    .end local v1           #dialog:Landroid/app/AlertDialog;
    :pswitch_0
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 5714
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const v3, 0x7f08000a

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5715
    const v2, 0x7f08004d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 5718
    :pswitch_1
    const v2, 0x7f08004e

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 5721
    :pswitch_2
    const v2, 0x7f080057

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 5724
    :pswitch_3
    const v2, 0x7f080058

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 5711
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 5775
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 5779
    return-void
.end method

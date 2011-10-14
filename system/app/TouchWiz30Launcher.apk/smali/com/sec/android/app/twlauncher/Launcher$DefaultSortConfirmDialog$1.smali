.class Lcom/sec/android/app/twlauncher/Launcher$DefaultSortConfirmDialog$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/Launcher$DefaultSortConfirmDialog;->createDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/twlauncher/Launcher$DefaultSortConfirmDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Launcher$DefaultSortConfirmDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 5579
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$DefaultSortConfirmDialog$1;->this$1:Lcom/sec/android/app/twlauncher/Launcher$DefaultSortConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 5581
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 5582
    return-void
.end method

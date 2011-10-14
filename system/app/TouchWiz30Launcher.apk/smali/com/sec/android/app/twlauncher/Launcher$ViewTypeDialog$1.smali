.class Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;->createDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 7752
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog$1;->this$1:Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 7754
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 7755
    return-void
.end method

.class Lcom/sec/android/app/twlauncher/Launcher$NameFolder$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/Launcher$NameFolder;->createDialog(Landroid/app/AlertDialog$Builder;I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/twlauncher/Launcher$NameFolder;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Launcher$NameFolder;)V
    .locals 0
    .parameter

    .prologue
    .line 5418
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$NameFolder$1;->this$1:Lcom/sec/android/app/twlauncher/Launcher$NameFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 5420
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$NameFolder$1;->this$1:Lcom/sec/android/app/twlauncher/Launcher$NameFolder;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher$NameFolder;->access$2900(Lcom/sec/android/app/twlauncher/Launcher$NameFolder;)V

    .line 5421
    return-void
.end method

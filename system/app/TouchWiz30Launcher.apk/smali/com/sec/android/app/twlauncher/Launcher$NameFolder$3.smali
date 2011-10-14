.class Lcom/sec/android/app/twlauncher/Launcher$NameFolder$3;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 5430
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$NameFolder$3;->this$1:Lcom/sec/android/app/twlauncher/Launcher$NameFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 5432
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$NameFolder$3;->this$1:Lcom/sec/android/app/twlauncher/Launcher$NameFolder;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher$NameFolder;->access$3000(Lcom/sec/android/app/twlauncher/Launcher$NameFolder;)V

    .line 5433
    return-void
.end method

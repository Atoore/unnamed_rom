.class Lcom/sec/android/app/twlauncher/Launcher$TipsDialog$2;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;->createDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 7805
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog$2;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 7807
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 7808
    return-void
.end method

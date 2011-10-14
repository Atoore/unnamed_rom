.class Lcom/android/mms/ui/PushMessageDialog$1;
.super Lcom/android/mms/ui/PushMessageDialog$ConfirmWPMOnClickListener;
.source "PushMessageDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/PushMessageDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/PushMessageDialog;

.field final synthetic val$href:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/PushMessageDialog;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/mms/ui/PushMessageDialog$1;->this$0:Lcom/android/mms/ui/PushMessageDialog;

    iput-object p3, p0, Lcom/android/mms/ui/PushMessageDialog$1;->val$href:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/PushMessageDialog$ConfirmWPMOnClickListener;-><init>(Lcom/android/mms/ui/PushMessageDialog;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/mms/ui/PushMessageDialog$1;->val$href:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/PushMessageDialog$1;->this$0:Lcom/android/mms/ui/PushMessageDialog;

    invoke-static {v0, v1}, Lcom/android/mms/transaction/PushReceiverService;->processUri(Ljava/lang/String;Landroid/content/Context;)V

    .line 57
    iget-object v0, p0, Lcom/android/mms/ui/PushMessageDialog$1;->this$0:Lcom/android/mms/ui/PushMessageDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/PushMessageDialog;->finish()V

    .line 58
    return-void
.end method

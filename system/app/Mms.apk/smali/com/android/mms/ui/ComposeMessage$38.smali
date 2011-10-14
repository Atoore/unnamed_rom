.class Lcom/android/mms/ui/ComposeMessage$38;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessage;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessage;

.field final synthetic val$append:Z

.field final synthetic val$dialog:Landroid/app/ProgressDialog;

.field final synthetic val$fileUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessage;Landroid/net/Uri;ZLandroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3904
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$38;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessage$38;->val$fileUri:Landroid/net/Uri;

    iput-boolean p3, p0, Lcom/android/mms/ui/ComposeMessage$38;->val$append:Z

    iput-object p4, p0, Lcom/android/mms/ui/ComposeMessage$38;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 3906
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$38;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage$38;->val$fileUri:Landroid/net/Uri;

    iget-boolean v3, p0, Lcom/android/mms/ui/ComposeMessage$38;->val$append:Z

    const/4 v4, 0x0

    move v5, v1

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessage;->access$6100(Lcom/android/mms/ui/ComposeMessage;ILandroid/net/Uri;ZZZ)V

    .line 3907
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$38;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3908
    return-void
.end method

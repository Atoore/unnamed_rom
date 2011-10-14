.class Lcom/android/mms/ui/ComposeMessage$CancelSendingListener;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelSendingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessage;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/ComposeMessage;)V
    .locals 0
    .parameter

    .prologue
    .line 973
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$CancelSendingListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ComposeMessage;Lcom/android/mms/ui/ComposeMessage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 973
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessage$CancelSendingListener;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 975
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$CancelSendingListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessage;->isRecipientsEditorVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 976
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$CancelSendingListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    .line 977
    .local v0, isMms:Z
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$CancelSendingListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$900(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/RecipientsEditor;->hasInvalidRecipient(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 978
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$CancelSendingListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessage;->access$2400(Lcom/android/mms/ui/ComposeMessage;Z)V

    .line 979
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$CancelSendingListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$900(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    .line 982
    .end local v0           #isMms:Z
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 983
    return-void
.end method

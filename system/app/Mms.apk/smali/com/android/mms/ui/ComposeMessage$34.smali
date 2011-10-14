.class Lcom/android/mms/ui/ComposeMessage$34;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessage;->showAddAttachmentDialog(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessage;

.field final synthetic val$attachmentTypeSelectorAdapter:Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

.field final synthetic val$toReplaceMedia:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessage;Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3719
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$34;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessage$34;->val$attachmentTypeSelectorAdapter:Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

    iput-boolean p3, p0, Lcom/android/mms/ui/ComposeMessage$34;->val$toReplaceMedia:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 3721
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$34;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$34;->val$attachmentTypeSelectorAdapter:Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

    invoke-virtual {v1, p2}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->buttonToCommand(I)I

    move-result v1

    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessage$34;->val$toReplaceMedia:Z

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessage;->access$5500(Lcom/android/mms/ui/ComposeMessage;IZ)V

    .line 3724
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3725
    return-void
.end method

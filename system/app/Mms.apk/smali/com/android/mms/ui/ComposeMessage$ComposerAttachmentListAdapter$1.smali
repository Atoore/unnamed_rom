.class Lcom/android/mms/ui/ComposeMessage$ComposerAttachmentListAdapter$1;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessage$ComposerAttachmentListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessage$ComposerAttachmentListAdapter;

.field final synthetic val$attachment:Lcom/android/mms/model/AttachmentModel;

.field final synthetic val$selectPosition:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessage$ComposerAttachmentListAdapter;Lcom/android/mms/model/AttachmentModel;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5372
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$ComposerAttachmentListAdapter$1;->this$1:Lcom/android/mms/ui/ComposeMessage$ComposerAttachmentListAdapter;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessage$ComposerAttachmentListAdapter$1;->val$attachment:Lcom/android/mms/model/AttachmentModel;

    iput p3, p0, Lcom/android/mms/ui/ComposeMessage$ComposerAttachmentListAdapter$1;->val$selectPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 5374
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$ComposerAttachmentListAdapter$1;->this$1:Lcom/android/mms/ui/ComposeMessage$ComposerAttachmentListAdapter;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessage$ComposerAttachmentListAdapter;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$ComposerAttachmentListAdapter$1;->val$attachment:Lcom/android/mms/model/AttachmentModel;

    iget v2, p0, Lcom/android/mms/ui/ComposeMessage$ComposerAttachmentListAdapter$1;->val$selectPosition:I

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessage;->access$8100(Lcom/android/mms/ui/ComposeMessage;Lcom/android/mms/model/AttachmentModel;I)V

    .line 5375
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$ComposerAttachmentListAdapter$1;->this$1:Lcom/android/mms/ui/ComposeMessage$ComposerAttachmentListAdapter;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessage$ComposerAttachmentListAdapter;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$ComposerAttachmentListAdapter$1;->this$1:Lcom/android/mms/ui/ComposeMessage$ComposerAttachmentListAdapter;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessage$ComposerAttachmentListAdapter;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$100(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessage;->showSizeString(Ljava/lang/CharSequence;)V

    .line 5376
    return-void
.end method

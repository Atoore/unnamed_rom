.class Lcom/android/mms/ui/ComposeMessage$24;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessage;->onProtocolChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessage;

.field final synthetic val$mms:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessage;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2849
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$24;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iput-boolean p2, p0, Lcom/android/mms/ui/ComposeMessage$24;->val$mms:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2851
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$24;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$24;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$100(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessage;->showSizeString(Ljava/lang/CharSequence;)V

    .line 2852
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$24;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessage$24;->val$mms:Z

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessage;->access$4500(Lcom/android/mms/ui/ComposeMessage;Z)V

    .line 2853
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage$24;->val$mms:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$24;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2854
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$24;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$100(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getMMSLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2855
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$24;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/model/LayoutModel;->changeTo(I)V

    .line 2862
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$24;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessage$24;->val$mms:Z

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessage;->access$4600(Lcom/android/mms/ui/ComposeMessage;Z)V

    .line 2863
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$24;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$200(Lcom/android/mms/ui/ComposeMessage;)V

    .line 2864
    return-void

    .line 2858
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$24;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/model/LayoutModel;->changeTo(I)V

    goto :goto_0
.end method

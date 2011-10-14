.class Lcom/android/mms/ui/ComposeMessage$70;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessage;->showLayoutSelectorDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessage;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessage;)V
    .locals 0
    .parameter

    .prologue
    .line 7488
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$70;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 7490
    packed-switch p2, :pswitch_data_0

    .line 7508
    :goto_0
    return-void

    .line 7492
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$70;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$100(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->setMMSLayout(Z)V

    .line 7493
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$70;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/mms/model/LayoutModel;->changeTo(I)V

    .line 7495
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$70;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$100(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$70;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->changeLayout(Lcom/android/mms/data/WorkingMessage;)V

    .line 7496
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$70;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$100(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->invalidate()V

    goto :goto_0

    .line 7499
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$70;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$100(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->setMMSLayout(Z)V

    .line 7500
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$70;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/mms/model/LayoutModel;->changeTo(I)V

    .line 7502
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$70;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$100(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$70;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->changeLayout(Lcom/android/mms/data/WorkingMessage;)V

    .line 7503
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$70;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$100(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->invalidate()V

    goto :goto_0

    .line 7490
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

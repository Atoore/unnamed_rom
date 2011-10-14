.class Lcom/android/mms/ui/ComposeMessage$41;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessage;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessage;

.field final synthetic val$append:Z

.field final synthetic val$dataUri:Landroid/net/Uri;

.field final synthetic val$error:I

.field final synthetic val$mediaTypeStringId:I

.field final synthetic val$reqCode:I

.field final synthetic val$sendMultiple:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessage;IILandroid/net/Uri;IZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4242
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$41;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iput p2, p0, Lcom/android/mms/ui/ComposeMessage$41;->val$mediaTypeStringId:I

    iput p3, p0, Lcom/android/mms/ui/ComposeMessage$41;->val$error:I

    iput-object p4, p0, Lcom/android/mms/ui/ComposeMessage$41;->val$dataUri:Landroid/net/Uri;

    iput p5, p0, Lcom/android/mms/ui/ComposeMessage$41;->val$reqCode:I

    iput-boolean p6, p0, Lcom/android/mms/ui/ComposeMessage$41;->val$append:Z

    iput-boolean p7, p0, Lcom/android/mms/ui/ComposeMessage$41;->val$sendMultiple:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 4244
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$41;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 4245
    .local v7, res:Landroid/content/res/Resources;
    iget v0, p0, Lcom/android/mms/ui/ComposeMessage$41;->val$mediaTypeStringId:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 4248
    .local v6, mediaType:Ljava/lang/String;
    iget v0, p0, Lcom/android/mms/ui/ComposeMessage$41;->val$error:I

    packed-switch v0, :pswitch_data_0

    .line 4290
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/ui/ComposeMessage$41;->val$error:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4250
    :pswitch_0
    const v0, 0x7f090183

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4251
    .local v2, message:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$41;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$400(Lcom/android/mms/ui/ComposeMessage;)Landroid/app/Activity;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4311
    .end local v2           #message:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 4254
    :pswitch_1
    const v0, 0x7f090184

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4255
    .local v1, title:Ljava/lang/String;
    const v0, 0x7f090185

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4294
    .restart local v2       #message:Ljava/lang/String;
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage$41;->val$sendMultiple:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$41;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$2300(Lcom/android/mms/ui/ComposeMessage;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4296
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$41;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$400(Lcom/android/mms/ui/ComposeMessage;)Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Lcom/android/mms/ui/ComposeMessage$ShowErrorPopupListener;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessage$41;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {v3, v4, v10}, Lcom/android/mms/ui/ComposeMessage$ShowErrorPopupListener;-><init>(Lcom/android/mms/ui/ComposeMessage;Lcom/android/mms/ui/ComposeMessage$1;)V

    new-instance v4, Lcom/android/mms/ui/ComposeMessage$ShowErrorPopupCancelListener;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage$41;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {v4, v5, v10}, Lcom/android/mms/ui/ComposeMessage$ShowErrorPopupCancelListener;-><init>(Lcom/android/mms/ui/ComposeMessage;Lcom/android/mms/ui/ComposeMessage$1;)V

    new-instance v5, Lcom/android/mms/ui/ComposeMessage$ShowErrorPopupDismissListener;

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessage$41;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {v5, v9, v10}, Lcom/android/mms/ui/ComposeMessage$ShowErrorPopupDismissListener;-><init>(Lcom/android/mms/ui/ComposeMessage;Lcom/android/mms/ui/ComposeMessage$1;)V

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 4301
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$41;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0, v11}, Lcom/android/mms/ui/ComposeMessage;->access$2302(Lcom/android/mms/ui/ComposeMessage;Z)Z

    goto :goto_0

    .line 4259
    .end local v1           #title:Ljava/lang/String;
    .end local v2           #message:Ljava/lang/String;
    :pswitch_2
    const v0, 0x7f090045

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4260
    .restart local v1       #title:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$41;->this$0:Lcom/android/mms/ui/ComposeMessage;

    const v3, 0x7f090199

    invoke-static {v0, v3}, Lcom/android/mms/ui/ComposeMessage;->access$6500(Lcom/android/mms/ui/ComposeMessage;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4261
    const v0, 0x7f09017d

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4263
    .restart local v2       #message:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$41;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4264
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$41;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessage$41;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessage;->access$100(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v8

    .line 4268
    .local v8, text:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$41;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$100(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 4271
    .end local v2           #message:Ljava/lang/String;
    .end local v8           #text:Ljava/lang/String;
    :cond_2
    const v0, 0x7f09018b

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4274
    .restart local v2       #message:Ljava/lang/String;
    goto/16 :goto_1

    .line 4276
    .end local v1           #title:Ljava/lang/String;
    .end local v2           #message:Ljava/lang/String;
    :pswitch_3
    const v0, 0x7f090047

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4277
    .restart local v1       #title:Ljava/lang/String;
    const v0, 0x7f090048

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4278
    .restart local v2       #message:Ljava/lang/String;
    goto/16 :goto_1

    .line 4281
    .end local v1           #title:Ljava/lang/String;
    .end local v2           #message:Ljava/lang/String;
    :pswitch_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$41;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessage$41;->val$dataUri:Landroid/net/Uri;

    iget v4, p0, Lcom/android/mms/ui/ComposeMessage$41;->val$reqCode:I

    iget-boolean v5, p0, Lcom/android/mms/ui/ComposeMessage$41;->val$append:Z

    invoke-static {v0, v6, v3, v4, v5}, Lcom/android/mms/ui/ComposeMessage;->access$6600(Lcom/android/mms/ui/ComposeMessage;Ljava/lang/String;Landroid/net/Uri;IZ)V

    goto/16 :goto_0

    .line 4285
    :pswitch_5
    const v0, 0x7f0901b8

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4286
    .restart local v1       #title:Ljava/lang/String;
    const v0, 0x7f0901b9

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4287
    .restart local v2       #message:Ljava/lang/String;
    goto/16 :goto_1

    .line 4302
    :cond_3
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage$41;->val$sendMultiple:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$41;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$2300(Lcom/android/mms/ui/ComposeMessage;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4304
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$41;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$400(Lcom/android/mms/ui/ComposeMessage;)Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Lcom/android/mms/ui/ComposeMessage$ShowErrorPopupListener;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessage$41;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {v3, v4, v10}, Lcom/android/mms/ui/ComposeMessage$ShowErrorPopupListener;-><init>(Lcom/android/mms/ui/ComposeMessage;Lcom/android/mms/ui/ComposeMessage$1;)V

    new-instance v4, Lcom/android/mms/ui/ComposeMessage$ShowErrorPopupCancelListener;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage$41;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {v4, v5, v10}, Lcom/android/mms/ui/ComposeMessage$ShowErrorPopupCancelListener;-><init>(Lcom/android/mms/ui/ComposeMessage;Lcom/android/mms/ui/ComposeMessage$1;)V

    new-instance v5, Lcom/android/mms/ui/ComposeMessage$ShowErrorPopupDismissListener;

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessage$41;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {v5, v9, v10}, Lcom/android/mms/ui/ComposeMessage$ShowErrorPopupDismissListener;-><init>(Lcom/android/mms/ui/ComposeMessage;Lcom/android/mms/ui/ComposeMessage$1;)V

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 4309
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$41;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0, v11}, Lcom/android/mms/ui/ComposeMessage;->access$2302(Lcom/android/mms/ui/ComposeMessage;Z)Z

    goto/16 :goto_0

    .line 4248
    nop

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

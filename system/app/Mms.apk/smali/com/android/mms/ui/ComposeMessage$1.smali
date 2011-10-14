.class Lcom/android/mms/ui/ComposeMessage$1;
.super Landroid/os/Handler;
.source "ComposeMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessage;
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
    .line 481
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$1;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x1

    .line 483
    iget v4, p1, Landroid/os/Message;->what:I

    .line 484
    .local v4, what:I
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 485
    .local v1, position:I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 487
    .local v2, type:I
    sparse-switch v4, :sswitch_data_0

    .line 578
    :cond_0
    :goto_0
    return-void

    .line 490
    :sswitch_0
    if-ne v2, v6, :cond_1

    .line 491
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage$1;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessage;->access$000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    .line 493
    :cond_1
    if-ne v2, v8, :cond_2

    .line 494
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage$1;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessage;->access$000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->removeVideo()Z

    .line 496
    :cond_2
    if-ne v2, v9, :cond_3

    .line 497
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage$1;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessage;->access$000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->removeAudio()Z

    .line 499
    :cond_3
    const/16 v5, 0x8

    if-ne v2, v5, :cond_4

    .line 500
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage$1;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessage;->access$000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->removeText()Z

    .line 502
    :cond_4
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage$1;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessage;->access$000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    .line 504
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage$1;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessage;->access$000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    if-nez v5, :cond_6

    .line 505
    const/16 v3, 0xf

    .line 516
    .local v3, updateType:I
    :goto_1
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage$1;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessage;->access$100(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessage$1;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessage;->access$000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    .line 518
    const/16 v5, 0xf

    if-ne v3, v5, :cond_5

    .line 519
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage$1;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessage;->access$200(Lcom/android/mms/ui/ComposeMessage;)V

    .line 520
    :cond_5
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage$1;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessage$1;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessage;->access$100(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/ComposeMessage;->showSizeString(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 507
    .end local v3           #updateType:I
    :cond_6
    if-eq v2, v6, :cond_7

    if-ne v2, v8, :cond_8

    .line 509
    :cond_7
    const/16 v3, 0xe

    .restart local v3       #updateType:I
    goto :goto_1

    .line 510
    .end local v3           #updateType:I
    :cond_8
    if-ne v2, v9, :cond_9

    .line 511
    const/16 v3, 0x10

    .restart local v3       #updateType:I
    goto :goto_1

    .line 513
    .end local v3           #updateType:I
    :cond_9
    const/16 v3, 0xc

    .restart local v3       #updateType:I
    goto :goto_1

    .line 524
    .end local v3           #updateType:I
    :sswitch_1
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage$1;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessage;->access$000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 525
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage$1;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessage;->access$000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/mms/data/WorkingMessage;->removeSlide(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 526
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage$1;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessage;->access$100(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessage$1;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessage;->access$000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v6

    const/16 v7, 0xd

    invoke-virtual {v5, v6, v7}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    .line 528
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage$1;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessage;->access$200(Lcom/android/mms/ui/ComposeMessage;)V

    .line 531
    :cond_a
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage$1;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessage$1;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessage;->access$100(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/ComposeMessage;->showSizeString(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 534
    :sswitch_2
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage$1;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessage;->access$300(Lcom/android/mms/ui/ComposeMessage;)V

    .line 536
    :try_start_0
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage$1;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessage;->access$400(Lcom/android/mms/ui/ComposeMessage;)Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessage$1;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessage;->access$000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v6

    invoke-static {v5, v6, v1, v2}, Lcom/android/mms/ui/MessageUtils;->viewMediaContents(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;II)V
    :try_end_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 538
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 539
    .local v0, e:Landroid/drm/mobile2/OMADRMException;
    invoke-virtual {v0}, Landroid/drm/mobile2/OMADRMException;->printStackTrace()V

    goto/16 :goto_0

    .line 540
    .end local v0           #e:Landroid/drm/mobile2/OMADRMException;
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 541
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 545
    .end local v0           #e:Ljava/io/IOException;
    :sswitch_3
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage$1;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v5, v7, v2}, Lcom/android/mms/ui/ComposeMessage;->access$500(Lcom/android/mms/ui/ComposeMessage;ZI)V

    goto/16 :goto_0

    .line 549
    :sswitch_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 550
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage$1;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessage;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessage$1;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-object v6, v6, Lcom/android/mms/ui/ComposeMessage;->mPasteEvent:Lcom/android/mms/ui/ComposeMessage$IClipboardDataPasteEventImpl;

    invoke-virtual {v5, v7, v6}, Landroid/sec/clipboard/ClipboardExManager;->setPasteFrozen(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 555
    :goto_2
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage$1;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessage;->access$600(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/OnEventListener;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 556
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage$1;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessage;->access$600(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/OnEventListener;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/mms/ui/OnEventListener;->onEvent()V

    goto/16 :goto_0

    .line 552
    :cond_b
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage$1;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessage;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessage$1;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessage;->mPasteEvent:Lcom/android/mms/ui/ComposeMessage$IClipboardDataPasteEventImpl;

    invoke-virtual {v5, v6, v7}, Landroid/sec/clipboard/ClipboardExManager;->setPasteFrozen(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    goto :goto_2

    .line 561
    :sswitch_5
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage$1;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessage;->access$700(Lcom/android/mms/ui/ComposeMessage;)Landroid/widget/LinearLayout;

    move-result-object v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage$1;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessage;->access$700(Lcom/android/mms/ui/ComposeMessage;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_c

    .line 563
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage$1;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessage;->access$700(Lcom/android/mms/ui/ComposeMessage;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->requestFocus()Z

    goto/16 :goto_0

    .line 564
    :cond_c
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage$1;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessage;->access$800(Lcom/android/mms/ui/ComposeMessage;)Landroid/widget/EditText;

    move-result-object v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage$1;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessage;->access$800(Lcom/android/mms/ui/ComposeMessage;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getVisibility()I

    move-result v5

    if-nez v5, :cond_d

    .line 566
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage$1;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessage;->access$800(Lcom/android/mms/ui/ComposeMessage;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    .line 567
    :cond_d
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage$1;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessage;->access$900(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage$1;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessage;->access$900(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/ui/RecipientsEditor;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 569
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage$1;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessage;->access$900(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    goto/16 :goto_0

    .line 572
    :sswitch_6
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage$1;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessage;->access$1000(Lcom/android/mms/ui/ComposeMessage;)V

    goto/16 :goto_0

    .line 487
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x14 -> :sswitch_4
        0x28 -> :sswitch_5
        0x2b -> :sswitch_6
    .end sparse-switch
.end method

.class Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;
.super Ljava/lang/Object;
.source "MmsRichContainer.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsRichContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageOnKey"
.end annotation


# instance fields
.field private mSlideIndex:I

.field private mType:I

.field final synthetic this$0:Lcom/android/mms/ui/MmsRichContainer;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MmsRichContainer;II)V
    .locals 0
    .parameter
    .parameter "type"
    .parameter "index"

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iput p2, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    .line 340
    iput p3, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    .line 341
    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 11
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 345
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-eq v4, v5, :cond_1

    .line 346
    const/16 v4, 0x42

    if-ne p2, v4, :cond_0

    move v4, v9

    .line 486
    :goto_0
    return v4

    :cond_0
    move v4, v8

    .line 349
    goto :goto_0

    .line 353
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v5, :cond_3

    .line 354
    :cond_2
    const/4 v2, 0x0

    .line 355
    .local v2, msg:Landroid/os/Message;
    packed-switch p2, :pswitch_data_0

    .line 402
    .end local v2           #msg:Landroid/os/Message;
    :cond_3
    const/16 v4, 0x43

    if-ne p2, v4, :cond_d

    .line 403
    iget v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    packed-switch v4, :pswitch_data_1

    :cond_4
    :goto_1
    move v4, v9

    .line 459
    goto :goto_0

    .line 357
    .restart local v2       #msg:Landroid/os/Message;
    :pswitch_0
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-static {v4}, Lcom/android/mms/ui/MmsRichContainer;->access$100(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 358
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-static {v4}, Lcom/android/mms/ui/MmsRichContainer;->access$100(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x28

    iget v6, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    iget v7, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    invoke-static {v4, v5, v6, v7, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 361
    :cond_5
    if-eqz v2, :cond_6

    .line 362
    iget v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    packed-switch v4, :pswitch_data_2

    :cond_6
    move v4, v9

    .line 378
    goto :goto_0

    .line 365
    :pswitch_1
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v4, v4, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_7

    iget v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    if-nez v4, :cond_7

    .line 366
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_7
    move v4, v8

    .line 367
    goto :goto_0

    :pswitch_2
    move v4, v8

    .line 369
    goto :goto_0

    .line 371
    :pswitch_3
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v4, v4, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_8

    iget v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    if-nez v4, :cond_8

    .line 372
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_8
    move v4, v8

    .line 373
    goto :goto_0

    .line 380
    :pswitch_4
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-static {v4}, Lcom/android/mms/ui/MmsRichContainer;->access$100(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 381
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-static {v4}, Lcom/android/mms/ui/MmsRichContainer;->access$100(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x29

    iget v6, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    iget v7, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    invoke-static {v4, v5, v6, v7, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    :cond_9
    move v4, v8

    .line 383
    goto :goto_0

    .line 385
    :pswitch_5
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v4

    if-nez v4, :cond_3

    .line 386
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-static {v4}, Lcom/android/mms/ui/MmsRichContainer;->access$100(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x2b

    iget v6, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    iget v7, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    invoke-static {v4, v5, v6, v7, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 387
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    move v4, v9

    .line 388
    goto/16 :goto_0

    .line 406
    .end local v2           #msg:Landroid/os/Message;
    :pswitch_6
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isAnimationEnable()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 407
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget v5, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    iget v6, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    invoke-static {v4, v5, v6}, Lcom/android/mms/ui/MmsRichContainer;->access$200(Lcom/android/mms/ui/MmsRichContainer;II)V

    goto/16 :goto_1

    .line 409
    :cond_a
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-static {v4}, Lcom/android/mms/ui/MmsRichContainer;->access$100(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 410
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-static {v4}, Lcom/android/mms/ui/MmsRichContainer;->access$100(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v4

    iget v5, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    iget v6, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    invoke-static {v4, v7, v5, v6, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 412
    .restart local v2       #msg:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 418
    .end local v2           #msg:Landroid/os/Message;
    :pswitch_7
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-static {v4}, Lcom/android/mms/ui/MmsRichContainer;->access$100(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 419
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-static {v4}, Lcom/android/mms/ui/MmsRichContainer;->access$100(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v4

    iget v5, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    iget v6, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    invoke-static {v4, v7, v5, v6, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 421
    .restart local v2       #msg:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 423
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v5, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget v6, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/ui/MmsRichContainer;->access$300(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v1

    .line 424
    .local v1, mediaView:Landroid/widget/RelativeLayout;
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v4, v4, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    .line 425
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->requestFocus()Z

    goto/16 :goto_1

    .line 433
    .end local v1           #mediaView:Landroid/widget/RelativeLayout;
    .end local v2           #msg:Landroid/os/Message;
    :pswitch_8
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget v5, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 436
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v4, v4, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v5, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget v6, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/ui/MmsRichContainer;->access$300(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_b

    .line 438
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v5, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget v6, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/ui/MmsRichContainer;->access$300(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->requestFocus()Z

    goto/16 :goto_1

    .line 440
    :cond_b
    iget v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v5, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget v6, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/ui/MmsRichContainer;->access$400(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_4

    .line 444
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-static {v4}, Lcom/android/mms/ui/MmsRichContainer;->access$100(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 445
    iget-object v5, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget v6, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    sub-int/2addr v6, v9

    invoke-virtual {v4, v6}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Lcom/android/mms/ui/MmsRichContainer;->setLastElementFocus(Landroid/view/ViewGroup;)V

    .line 446
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v5, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget v6, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/MmsRichContainer;->removeView(Landroid/view/View;)V

    .line 447
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-static {v4}, Lcom/android/mms/ui/MmsRichContainer;->access$100(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x4

    iget v6, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    iget v7, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    invoke-static {v4, v5, v6, v7, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 449
    .restart local v2       #msg:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .end local v2           #msg:Landroid/os/Message;
    :cond_c
    move v4, v8

    .line 455
    goto/16 :goto_0

    .line 460
    :cond_d
    iget v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    const/16 v5, 0x8

    if-eq v4, v5, :cond_11

    .line 463
    const/16 v4, 0x17

    if-ne p2, v4, :cond_e

    move v4, v8

    .line 464
    goto/16 :goto_0

    .line 467
    :cond_e
    const/4 v4, 0x4

    if-eq p2, v4, :cond_10

    const/16 v4, 0x52

    if-eq p2, v4, :cond_10

    .line 468
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-static {v4}, Lcom/android/mms/ui/MmsRichContainer;->access$500(Lcom/android/mms/ui/MmsRichContainer;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewRoot;->getWindowSession(Landroid/os/Looper;)Landroid/view/IWindowSession;

    move-result-object v3

    .line 473
    .local v3, sWindowSession:Landroid/view/IWindowSession;
    if-eqz v3, :cond_f

    .line 474
    const/4 v4, 0x1

    :try_start_0
    invoke-interface {v3, v4}, Landroid/view/IWindowSession;->setInTouchMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :cond_f
    :goto_2
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget v5, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    invoke-virtual {v4, v5, v9}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 479
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move v4, v9

    .line 483
    goto/16 :goto_0

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .end local v0           #e:Landroid/os/RemoteException;
    .end local v3           #sWindowSession:Landroid/view/IWindowSession;
    :cond_10
    move v4, v8

    .line 481
    goto/16 :goto_0

    :cond_11
    move v4, v8

    .line 486
    goto/16 :goto_0

    .line 355
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 403
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 362
    :pswitch_data_2
    .packed-switch 0x5
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

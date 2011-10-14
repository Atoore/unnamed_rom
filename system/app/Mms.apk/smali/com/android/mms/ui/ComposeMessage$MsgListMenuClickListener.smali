.class final Lcom/android/mms/ui/ComposeMessage$MsgListMenuClickListener;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MsgListMenuClickListener"
.end annotation


# instance fields
.field private mMsgItem:Lcom/android/mms/ui/MessageItem;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessage;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessage;Lcom/android/mms/ui/MessageItem;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "msgItem"
    .parameter "view"

    .prologue
    .line 1380
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1381
    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessage$MsgListMenuClickListener;->mView:Landroid/view/View;

    .line 1382
    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessage$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 1383
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1386
    const-string v0, "Mms/ComposeMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMenuItemClick(),item="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessage$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 1389
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$2900(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/MessageListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$MsgListMenuClickListener;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    if-nez v3, :cond_1

    :cond_0
    move v0, v8

    .line 1456
    :goto_0
    return v0

    .line 1392
    :cond_1
    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$400(Lcom/android/mms/ui/ComposeMessage;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessage;->access$400(Lcom/android/mms/ui/ComposeMessage;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v4

    iget-object v6, v3, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/content/Context;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    .line 1394
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    move v0, v8

    .line 1456
    goto :goto_0

    .line 1396
    :sswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0, v3}, Lcom/android/mms/ui/ComposeMessage;->access$3000(Lcom/android/mms/ui/ComposeMessage;Lcom/android/mms/ui/MessageItem;)V

    .line 1397
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$3100(Lcom/android/mms/ui/ComposeMessage;)V

    .line 1398
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$3200(Lcom/android/mms/ui/ComposeMessage;)V

    move v0, v7

    .line 1399
    goto :goto_0

    .line 1401
    :sswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$1200(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/Conversation;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/mms/ui/MessageOptions;->resendMessage(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1402
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessage;->close()V

    :cond_2
    move v0, v7

    .line 1404
    goto :goto_0

    .line 1406
    :sswitch_2
    iget-object v1, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageOptions;->copyToClipboard(Ljava/lang/String;)V

    move v0, v7

    .line 1407
    goto :goto_0

    .line 1410
    :sswitch_3
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$1200(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/Conversation;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/mms/ui/MessageOptions;->copyMessageToSIM(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;)V

    move v0, v7

    .line 1412
    goto :goto_0

    .line 1414
    :sswitch_4
    invoke-virtual {v0, v3}, Lcom/android/mms/ui/MessageOptions;->forwardMessage(Lcom/android/mms/ui/MessageItem;)V

    move v0, v7

    .line 1415
    goto :goto_0

    .line 1417
    :sswitch_5
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$1200(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/Conversation;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/mms/ui/MessageOptions;->viewMessageDetail(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;)V

    move v0, v7

    .line 1418
    goto :goto_0

    .line 1420
    :sswitch_6
    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    .line 1421
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1422
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1424
    :cond_3
    new-instance v1, Lcom/android/mms/ui/ComposeMessage$DeleteMessageListener;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-boolean v4, v3, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    invoke-direct {v1, v2, v0, v4}, Lcom/android/mms/ui/ComposeMessage$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ComposeMessage;Landroid/net/Uri;Z)V

    .line 1426
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 1427
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$400(Lcom/android/mms/ui/ComposeMessage;)Landroid/app/Activity;

    move-result-object v0

    iget-boolean v2, v3, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessage;->access$3300(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Z)Landroid/app/AlertDialog;

    move-result-object v0

    .line 1428
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1429
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iput-object v0, v1, Lcom/android/mms/ui/ComposeMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    move v0, v7

    .line 1430
    goto/16 :goto_0

    .line 1433
    :sswitch_7
    invoke-virtual {v0, v3, v7}, Lcom/android/mms/ui/MessageOptions;->lockMessage(Lcom/android/mms/ui/MessageItem;Z)V

    move v0, v7

    .line 1434
    goto/16 :goto_0

    .line 1436
    :sswitch_8
    invoke-virtual {v0, v3, v8}, Lcom/android/mms/ui/MessageOptions;->lockMessage(Lcom/android/mms/ui/MessageItem;Z)V

    move v0, v7

    .line 1437
    goto/16 :goto_0

    .line 1439
    :sswitch_9
    iget-object v1, v3, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-wide v2, v3, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v0, v1, v7, v2, v3}, Lcom/android/mms/ui/MessageOptions;->showAttachmentList(Lcom/android/mms/model/SlideshowModel;ZJ)V

    move v0, v7

    .line 1440
    goto/16 :goto_0

    .line 1442
    :sswitch_a
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessage;->access$3402(Lcom/android/mms/ui/ComposeMessage;Landroid/content/Intent;)Landroid/content/Intent;

    .line 1443
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$3400(Lcom/android/mms/ui/ComposeMessage;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x1d

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessage;->access$3500(Lcom/android/mms/ui/ComposeMessage;Landroid/content/Intent;I)V

    move v0, v7

    .line 1444
    goto/16 :goto_0

    .line 1446
    :sswitch_b
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$400(Lcom/android/mms/ui/ComposeMessage;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/mms/ui/TranslateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1447
    const-string v1, "fromString"

    iget-object v2, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1448
    const-string v1, "editable"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1449
    const-string v1, "isMms"

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessage;->access$000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1450
    const-string v1, "hasRecipient"

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessage;->access$3600(Lcom/android/mms/ui/ComposeMessage;)I

    move-result v2

    if-lez v2, :cond_4

    move v2, v7

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1451
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1, v0}, Lcom/android/mms/ui/ComposeMessage;->access$3700(Lcom/android/mms/ui/ComposeMessage;Landroid/content/Intent;)V

    .line 1452
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$300(Lcom/android/mms/ui/ComposeMessage;)V

    move v0, v7

    .line 1453
    goto/16 :goto_0

    :cond_4
    move v2, v8

    .line 1450
    goto :goto_1

    .line 1394
    :sswitch_data_0
    .sparse-switch
        0x72 -> :sswitch_0
        0x75 -> :sswitch_5
        0x76 -> :sswitch_6
        0x79 -> :sswitch_4
        0x7c -> :sswitch_2
        0x7d -> :sswitch_1
        0x7f -> :sswitch_a
        0x80 -> :sswitch_7
        0x81 -> :sswitch_8
        0x83 -> :sswitch_3
        0x87 -> :sswitch_9
        0x9b -> :sswitch_b
    .end sparse-switch
.end method

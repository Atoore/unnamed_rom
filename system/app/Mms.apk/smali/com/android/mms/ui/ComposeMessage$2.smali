.class Lcom/android/mms/ui/ComposeMessage$2;
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
    .line 581
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$2;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    .line 585
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 600
    const-string v1, "Mms/ComposeMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown message: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 587
    :pswitch_0
    const-string v8, "mms"

    .line 604
    .local v8, type:Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage$2;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v1, 0x0

    invoke-static {v2, v8, v4, v5, v1}, Lcom/android/mms/ui/ComposeMessage;->access$1100(Lcom/android/mms/ui/ComposeMessage;Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    .line 605
    .local v3, msgItem:Lcom/android/mms/ui/MessageItem;
    if-eqz v3, :cond_0

    .line 606
    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$2;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$400(Lcom/android/mms/ui/ComposeMessage;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage$2;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessage;->access$400(Lcom/android/mms/ui/ComposeMessage;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v4

    iget-object v6, v3, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/content/Context;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    .line 607
    .local v0, messageOptions:Lcom/android/mms/ui/MessageOptions;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$2;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$1200(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/Conversation;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/mms/ui/MessageOptions;->resendMessage(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 608
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$2;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessage;->close()V

    goto :goto_0

    .line 590
    .end local v0           #messageOptions:Lcom/android/mms/ui/MessageOptions;
    .end local v3           #msgItem:Lcom/android/mms/ui/MessageItem;
    .end local v8           #type:Ljava/lang/String;
    :pswitch_1
    const-string v8, "sms"

    .line 591
    .restart local v8       #type:Ljava/lang/String;
    goto :goto_1

    .line 593
    .end local v8           #type:Ljava/lang/String;
    :pswitch_2
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$2;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$300(Lcom/android/mms/ui/ComposeMessage;)V

    .line 594
    new-instance v7, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    invoke-direct {v7, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 595
    .local v7, intent:Landroid/content/Intent;
    const-string v1, "com.android.browser.application_id"

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage$2;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessage;->access$400(Lcom/android/mms/ui/ComposeMessage;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 596
    const/high16 v1, 0x8

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 597
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$2;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$400(Lcom/android/mms/ui/ComposeMessage;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 585
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

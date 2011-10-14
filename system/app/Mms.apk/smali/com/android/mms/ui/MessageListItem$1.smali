.class Lcom/android/mms/ui/MessageListItem$1;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem;->bindNotifInd(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;

.field final synthetic val$msgItem:Lcom/android/mms/ui/MessageItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 403
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    iput-object p2, p0, Lcom/android/mms/ui/MessageListItem$1;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 405
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getAvailableStorage()J

    move-result-wide v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$000(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09017f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 408
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$100(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 424
    :goto_0
    return-void

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$200(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$300(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 416
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$300(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setLinksClickable(Z)V

    .line 417
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$400(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 418
    const-string v1, "uri"

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$1;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 422
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.class Lcom/android/mms/ui/MessageListItem$4;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem;->onMessageListItemClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;

.field final synthetic val$urls:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 913
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$4;->this$0:Lcom/android/mms/ui/MessageListItem;

    iput-object p2, p0, Lcom/android/mms/ui/MessageListItem$4;->val$urls:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 916
    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$4;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 917
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$4;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v2}, Lcom/android/mms/ui/MessageListItem;->access$600(Lcom/android/mms/ui/MessageListItem;)V

    .line 928
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 929
    return-void

    .line 919
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$4;->val$urls:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 924
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$4;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v2}, Lcom/android/mms/ui/MessageListItem;->access$1100(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 925
    .local v0, msg:Landroid/os/Message;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 926
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.class Lcom/android/mms/ui/MessageListItem$8;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0
    .parameter

    .prologue
    .line 1287
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$8;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1289
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$8;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v2}, Lcom/android/mms/ui/MessageListItem;->access$1100(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1290
    const/4 v1, 0x2

    .line 1291
    .local v1, what:I
    const-string v2, "mms"

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem$8;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$1200(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1292
    const/4 v1, 0x1

    .line 1294
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$8;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v2}, Lcom/android/mms/ui/MessageListItem;->access$1100(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1295
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$8;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v2}, Lcom/android/mms/ui/MessageListItem;->access$1200(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1296
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1298
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #what:I
    :cond_1
    return-void
.end method

.class Lcom/android/mms/ui/ComposeMessage$56;
.super Landroid/content/BroadcastReceiver;
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
    .line 6364
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$56;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 6367
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 6368
    .local v0, action:Ljava/lang/String;
    const-string v1, "ResponseAxT9Info"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6369
    const-string v1, "AxT9IME.isVisibleWindow"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/mms/ui/ComposeMessage;->isSipVisible:Z

    .line 6371
    sget-boolean v1, Lcom/android/mms/ui/ComposeMessage;->isSipVisible:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$56;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$10400(Lcom/android/mms/ui/ComposeMessage;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6372
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$56;->this$0:Lcom/android/mms/ui/ComposeMessage;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessage;->access$10500(Lcom/android/mms/ui/ComposeMessage;Z)V

    .line 6375
    :cond_0
    sget-boolean v1, Lcom/android/mms/ui/ComposeMessage;->isSipVisible:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$56;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$2900(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/MessageListView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6376
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$56;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$2900(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/MessageListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage$56;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessage;->access$2900(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/MessageListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListView;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessageListView;->setSelection(I)V

    .line 6378
    :cond_1
    return-void
.end method

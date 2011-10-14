.class Lcom/android/mms/ui/ComposeMessage$49;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessage;->initResourceRefs()V
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
    .line 5065
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$49;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "arg0"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 5067
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage$49;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessage;->access$7800(Lcom/android/mms/ui/ComposeMessage;)Landroid/widget/CheckBox;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-nez v5, :cond_2

    move v1, v7

    .line 5069
    .local v1, checked:Z
    :goto_0
    if-eqz v1, :cond_3

    .line 5070
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage$49;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 5073
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5075
    :cond_0
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 5076
    .local v2, msgId:J
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 5077
    .local v4, msgType:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage$49;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5, v2, v3, v4}, Lcom/android/mms/ui/MessageListAdapter;->setChecked(JLjava/lang/String;)V

    .line 5078
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 5083
    .end local v0           #c:Landroid/database/Cursor;
    .end local v2           #msgId:J
    .end local v4           #msgType:Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage$49;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessage;->access$7800(Lcom/android/mms/ui/ComposeMessage;)Landroid/widget/CheckBox;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 5084
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage$49;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListAdapter;->getCheckedCount()I

    move-result v5

    if-lez v5, :cond_4

    .line 5085
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage$49;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessage;->access$7900(Lcom/android/mms/ui/ComposeMessage;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 5089
    :goto_2
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage$49;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListAdapter;->notifyDataSetChanged()V

    .line 5090
    return-void

    .end local v1           #checked:Z
    :cond_2
    move v1, v6

    .line 5067
    goto :goto_0

    .line 5081
    .restart local v1       #checked:Z
    :cond_3
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage$49;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListAdapter;->clearCheckedList()V

    goto :goto_1

    .line 5087
    :cond_4
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage$49;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessage;->access$7900(Lcom/android/mms/ui/ComposeMessage;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_2
.end method

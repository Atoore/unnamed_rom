.class final Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ComposeMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BackgroundQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessage;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessage;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 5996
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    .line 5997
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 5998
    return-void
.end method

.method private getNewPosition(Landroid/content/Intent;Landroid/database/Cursor;I)I
    .locals 10
    .parameter "intent"
    .parameter "cursor"
    .parameter "defaultValue"

    .prologue
    const-wide/16 v8, -0x1

    .line 6131
    move v2, p3

    .line 6133
    .local v2, newPosition:I
    const-string v7, "select_id"

    invoke-virtual {p1, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 6134
    .local v3, targetMsgId:J
    const-string v7, "message_type"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6139
    .local v5, targetMsgType:Ljava/lang/String;
    cmp-long v7, v3, v8

    if-eqz v7, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 6140
    const/4 v7, -0x1

    invoke-interface {p2, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 6141
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 6142
    const/4 v7, 0x1

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 6143
    .local v0, msgId:J
    const/4 v7, 0x0

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 6144
    .local v6, type:Ljava/lang/String;
    cmp-long v7, v0, v3

    if-nez v7, :cond_0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 6145
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 6150
    .end local v0           #msgId:J
    .end local v6           #type:Ljava/lang/String;
    :cond_1
    return v2
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v3, "Mms/ComposeMessage"

    .line 6155
    sparse-switch p1, :sswitch_data_0

    .line 6187
    :cond_0
    :goto_0
    const/16 v0, 0x70a

    if-ne p1, v0, :cond_3

    sget-boolean v0, Lcom/android/mms/ui/ConversationList;->mIsEmptyThread:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6189
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 6190
    invoke-static {}, Lcom/android/mms/data/Conversation;->init()V

    .line 6194
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0, v2}, Lcom/android/mms/ui/ComposeMessage;->access$9902(Lcom/android/mms/ui/ComposeMessage;Z)Z

    .line 6195
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$2200(Lcom/android/mms/ui/ComposeMessage;)V

    .line 6207
    :cond_1
    :goto_1
    return-void

    .line 6158
    :sswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessage;->access$9002(Lcom/android/mms/ui/ComposeMessage;Z)Z

    .line 6159
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0, v2}, Lcom/android/mms/ui/ComposeMessage;->access$8802(Lcom/android/mms/ui/ComposeMessage;Z)Z

    .line 6167
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->clearCheckedList()V

    .line 6168
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$400(Lcom/android/mms/ui/ComposeMessage;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;)V

    .line 6171
    if-nez p3, :cond_0

    .line 6172
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$8700(Lcom/android/mms/ui/ComposeMessage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6173
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$8800(Lcom/android/mms/ui/ComposeMessage;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6174
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessage;->setDeleteModeLayout(Z)V

    .line 6175
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessage;->access$8802(Lcom/android/mms/ui/ComposeMessage;Z)Z

    goto :goto_0

    .line 6177
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$8900(Lcom/android/mms/ui/ComposeMessage;)V

    goto :goto_0

    .line 6197
    :cond_3
    const-string v0, "Mms/ComposeMessage"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeleteComplete / token = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6198
    if-ge p3, v2, :cond_1

    .line 6199
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessage;->resetChildView()V

    .line 6200
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$400(Lcom/android/mms/ui/ComposeMessage;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 6201
    invoke-static {}, Lcom/android/mms/ui/ComposeMessage;->access$1700()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/mms/ui/ComposeMessage;->access$1700()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6202
    const-string v0, "Mms/ComposeMessage"

    const-string v0, "DeleteAnimation Progress Dismissed with onDeleteComplete()"

    invoke-static {v3, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6203
    invoke-static {}, Lcom/android/mms/ui/ComposeMessage;->access$1700()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_1

    .line 6155
    :sswitch_data_0
    .sparse-switch
        0x70a -> :sswitch_0
        0x25e4 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 10
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 6002
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$2000(Lcom/android/mms/ui/ComposeMessage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6128
    .end local p2
    :goto_0
    return-void

    .line 6005
    .restart local p2
    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 6110
    :sswitch_0
    const-string v0, "Mms/ComposeMessage"

    const-string v1, "onQueryComplete(),HAVE_LOCKED_MESSAGES_TOKEN"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 6111
    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 6113
    .local v1, threadId:J
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 6114
    new-instance v0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessage;->access$9800(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessage;->access$400(Lcom/android/mms/ui/ComposeMessage;)Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;-><init>(JLandroid/content/AsyncQueryHandler;Landroid/content/Context;[Ljava/lang/Long;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->setDeleteDraftMessage(Z)Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    move-result-object v0

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_10

    .end local v1           #threadId:J
    const/4 v1, 0x1

    :goto_1
    if-eqz p3, :cond_11

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_11

    const/4 v2, 0x1

    :goto_2
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessage;->access$400(Lcom/android/mms/ui/ComposeMessage;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0901bb

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/ConversationList;->confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v7

    .line 6120
    .local v7, dlg:Landroid/app/AlertDialog;
    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 6121
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iput-object v7, v0, Lcom/android/mms/ui/ComposeMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 6123
    const-string v0, "Mms/ComposeMessage"

    const-string v1, "onQueryComplete(),HAVE_LOCKED_MESSAGES_TOKEN"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6007
    .end local v7           #dlg:Landroid/app/AlertDialog;
    .restart local p2
    :sswitch_1
    const-string v0, "Mms/ComposeMessage"

    const-string v1, "onQueryComplete(),MESSAGE_LIST_QUERY_TOKEN"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6009
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$8600(Lcom/android/mms/ui/ComposeMessage;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    invoke-direct {p0, v0, p3, v1}, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->getNewPosition(Landroid/content/Intent;Landroid/database/Cursor;I)I

    move-result v9

    .line 6011
    .local v9, newSelectionPos:I
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 6012
    .local v6, cursorCount:I
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0, p3}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 6014
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$8700(Lcom/android/mms/ui/ComposeMessage;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6015
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$8800(Lcom/android/mms/ui/ComposeMessage;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6016
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessage;->setDeleteModeLayout(Z)V

    .line 6017
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessage;->access$8802(Lcom/android/mms/ui/ComposeMessage;Z)Z

    .line 6022
    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessage;->resetChildView()V

    .line 6023
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$400(Lcom/android/mms/ui/ComposeMessage;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 6024
    invoke-static {}, Lcom/android/mms/ui/ComposeMessage;->access$1700()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/mms/ui/ComposeMessage;->access$1700()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6025
    const-string v0, "Mms/ComposeMessage"

    const-string v1, "DeleteAnimation Progress Dismissed with onQueryComplete()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6026
    invoke-static {}, Lcom/android/mms/ui/ComposeMessage;->access$1700()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 6034
    :cond_2
    if-nez v6, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessage;->isRecipientsEditorVisible()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$9000(Lcom/android/mms/ui/ComposeMessage;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 6037
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$1200(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    .line 6041
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$2200(Lcom/android/mms/ui/ComposeMessage;)V

    goto/16 :goto_0

    .line 6019
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$8900(Lcom/android/mms/ui/ComposeMessage;)V

    goto :goto_3

    .line 6043
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$9100(Lcom/android/mms/ui/ComposeMessage;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$9200(Lcom/android/mms/ui/ComposeMessage;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 6045
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$1200(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->hasDraft()Z

    move-result v8

    .line 6046
    .local v8, hasDraft:Z
    if-nez v6, :cond_5

    if-nez v8, :cond_5

    .line 6047
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 6048
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$1200(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    .line 6049
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$300(Lcom/android/mms/ui/ComposeMessage;)V

    .line 6050
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$2200(Lcom/android/mms/ui/ComposeMessage;)V

    .line 6051
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessage;->access$9102(Lcom/android/mms/ui/ComposeMessage;Z)Z

    goto/16 :goto_0

    .line 6053
    :cond_5
    if-eqz v6, :cond_6

    if-nez v8, :cond_6

    .line 6054
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 6055
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$4700(Lcom/android/mms/ui/ComposeMessage;)V

    .line 6056
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessage;->access$9102(Lcom/android/mms/ui/ComposeMessage;Z)Z

    .line 6067
    .end local v8           #hasDraft:Z
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessage;->isRecipientsEditorVisible()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessage;->access$9400(Lcom/android/mms/ui/ComposeMessage;Z)V

    .line 6072
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$9500(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-gtz v0, :cond_e

    .line 6073
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$900(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 6074
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$100(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$100(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$9600(Lcom/android/mms/ui/ComposeMessage;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$800(Lcom/android/mms/ui/ComposeMessage;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_9

    .line 6076
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$900(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    .line 6093
    :cond_9
    :goto_5
    const/4 v0, -0x1

    if-eq v9, v0, :cond_a

    .line 6094
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$2900(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/MessageListView;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/mms/ui/MessageListView;->setSelection(I)V

    .line 6096
    :cond_a
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$1200(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    .line 6100
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$1500(Lcom/android/mms/ui/ComposeMessage;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget v0, Lcom/android/mms/ui/MessageListAdapter;->animationIdx:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_b

    .line 6102
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sput v0, Lcom/android/mms/ui/MessageListAdapter;->animationIdx:I

    .line 6106
    :cond_b
    const-string v0, "Mms/ComposeMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryComplete(),MESSAGE_LIST_QUERY_TOKEN, mMsgListAdapter.getCount()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", animationIdx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/MessageListAdapter;->animationIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6059
    :cond_c
    if-nez v6, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessage;->isRecipientsEditorVisible()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$9000(Lcom/android/mms/ui/ComposeMessage;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 6061
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$9300(Lcom/android/mms/ui/ComposeMessage;)V

    .line 6063
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$100(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$100(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_6

    .line 6064
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$100(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->requestFocus()Z

    goto/16 :goto_4

    .line 6080
    :cond_d
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$100(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 6081
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$100(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->requestFocus()Z

    goto/16 :goto_5

    .line 6086
    :cond_e
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$100(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$9700(Lcom/android/mms/ui/ComposeMessage;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_9

    .line 6089
    :cond_f
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$9600(Lcom/android/mms/ui/ComposeMessage;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6090
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$800(Lcom/android/mms/ui/ComposeMessage;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_5

    .line 6114
    .end local v6           #cursorCount:I
    .end local v9           #newSelectionPos:I
    .end local p2
    :cond_10
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 6005
    nop

    :sswitch_data_0
    .sparse-switch
        0x70b -> :sswitch_0
        0x2537 -> :sswitch_1
    .end sparse-switch
.end method

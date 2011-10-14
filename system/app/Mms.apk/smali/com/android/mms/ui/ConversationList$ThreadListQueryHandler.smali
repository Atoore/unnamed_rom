.class final Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ConversationList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThreadListQueryHandler"
.end annotation


# instance fields
.field private mDeleteEventHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/mms/ui/ConversationList;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ConversationList;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 1230
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    .line 1231
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1232
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 9
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    const/16 v7, 0xc9

    const/4 v6, 0x0

    const-string v8, "Mms/ConversationList"

    .line 1384
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v4}, Lcom/android/mms/ui/ConversationList;->access$200(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationListAdapter;->clearCheckedList()V

    .line 1385
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/mms/ui/ConversationList;->access$3002(Z)Z

    .line 1388
    packed-switch p1, :pswitch_data_0

    .line 1443
    :cond_0
    :goto_0
    return-void

    .line 1390
    :pswitch_0
    const-string v4, "Mms/ConversationList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDeleteComplete(),DELETE_ALL_CONVERSATION_TOKEN,mIsDeleteMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v5}, Lcom/android/mms/ui/ConversationList;->access$1200(Lcom/android/mms/ui/ConversationList;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    invoke-static {}, Lcom/android/mms/data/Conversation;->init()V

    .line 1395
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v4}, Lcom/android/mms/ui/ConversationList;->access$600(Lcom/android/mms/ui/ConversationList;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;)V

    .line 1396
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/util/DraftCache;->refresh()V

    .line 1398
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v4}, Lcom/android/mms/ui/ConversationList;->access$1200(Lcom/android/mms/ui/ConversationList;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1399
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v4, v6, v6}, Lcom/android/mms/ui/ConversationList;->setDeleteModeLayout(ZZ)V

    .line 1403
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    .line 1404
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1409
    :pswitch_1
    const-string v4, "Mms/ConversationList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDeleteComplete(),DELETE_CONVERSATION_TOKEN,mIsDeleteMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v5}, Lcom/android/mms/ui/ConversationList;->access$1200(Lcom/android/mms/ui/ConversationList;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    if-eqz p2, :cond_4

    .line 1414
    move-object v0, p2

    check-cast v0, Lcom/android/mms/ui/DeleteInfo;

    move-object v1, v0

    .line 1416
    .local v1, deleteInfo:Lcom/android/mms/ui/DeleteInfo;
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    if-eqz v4, :cond_2

    iget-boolean v4, v1, Lcom/android/mms/ui/DeleteInfo;->mLast:Z

    if-eqz v4, :cond_2

    .line 1417
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1420
    :cond_2
    iget-wide v2, v1, Lcom/android/mms/ui/DeleteInfo;->mThreadId:J

    .line 1423
    .local v2, threadId:J
    if-lez p3, :cond_3

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_3

    .line 1424
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v6}, Lcom/android/mms/util/DraftCache;->setDraftState(JZ)V

    .line 1430
    :cond_3
    iget-boolean v4, v1, Lcom/android/mms/ui/DeleteInfo;->mLast:Z

    if-eqz v4, :cond_4

    .line 1432
    invoke-static {}, Lcom/android/mms/data/Conversation;->init()V

    .line 1434
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v4}, Lcom/android/mms/ui/ConversationList;->access$600(Lcom/android/mms/ui/ConversationList;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;)V

    .line 1438
    .end local v1           #deleteInfo:Lcom/android/mms/ui/DeleteInfo;
    .end local v2           #threadId:J
    :cond_4
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v4}, Lcom/android/mms/ui/ConversationList;->access$1200(Lcom/android/mms/ui/ConversationList;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1439
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v4, v6, v6}, Lcom/android/mms/ui/ConversationList;->setDeleteModeLayout(ZZ)V

    goto/16 :goto_0

    .line 1388
    nop

    :pswitch_data_0
    .packed-switch 0x709
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 16
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 1242
    sparse-switch p1, :sswitch_data_0

    .line 1375
    const-string v2, "Mms/ConversationList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onQueryComplete called with unknown token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 1244
    .restart local p2
    :sswitch_0
    const-string v2, "Mms/ConversationList"

    const-string v3, "onQueryComplete(),THREAD_LIST_FAKE_VIEW_QUERY_TOKEN"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    move-object v2, v0

    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->access$1400(Lcom/android/mms/ui/ConversationList;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->setVerticalScrollBarEnabled(Z)V

    .line 1248
    const/4 v13, 0x0

    .line 1249
    .local v13, fakeCursorCount:I
    if-eqz p3, :cond_1

    .line 1250
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 1257
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    move-object v2, v0

    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->access$200(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-static {v2, v13, v3}, Lcom/android/mms/ui/ConversationList;->access$2700(Lcom/android/mms/ui/ConversationList;IZ)V

    .line 1263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    move-object v2, v0

    const-wide/16 v5, 0xc8

    invoke-static {v2, v5, v6}, Lcom/android/mms/ui/ConversationList;->access$2800(Lcom/android/mms/ui/ConversationList;J)V

    goto :goto_0

    .line 1268
    .end local v13           #fakeCursorCount:I
    :sswitch_1
    const-string v2, "Mms/ConversationList"

    const-string v3, "onQueryComplete(),THREAD_LIST_QUERY_TOKEN"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    move-object v2, v0

    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->access$1400(Lcom/android/mms/ui/ConversationList;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->setVerticalScrollBarEnabled(Z)V

    .line 1273
    const/4 v14, 0x0

    .line 1274
    .local v14, fullCursorCount:I
    if-eqz p3, :cond_2

    .line 1275
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v14

    .line 1282
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    move-object v2, v0

    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->access$200(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    move-object v2, v0

    invoke-static {v2, v14}, Lcom/android/mms/ui/ConversationList;->access$2900(Lcom/android/mms/ui/ConversationList;I)V

    .line 1288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    move-object v2, v0

    const/4 v3, 0x1

    invoke-static {v2, v14, v3}, Lcom/android/mms/ui/ConversationList;->access$2700(Lcom/android/mms/ui/ConversationList;IZ)V

    .line 1292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    move-object v2, v0

    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->access$1200(Lcom/android/mms/ui/ConversationList;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/mms/ui/ConversationList;->access$3000()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1293
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    move-object v2, v0

    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->access$200(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListAdapter;->reCalulateCheckedThreads()V

    .line 1294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    move-object v2, v0

    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->access$200(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListAdapter;->getCheckedCount()I

    move-result v11

    .line 1295
    .local v11, checkedCount:I
    if-lez v11, :cond_7

    .line 1296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/mms/ui/ConversationList;->access$200(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v3

    if-ne v3, v11, :cond_6

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ConversationList;->setSelectAll(Z)V

    .line 1297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    move-object v2, v0

    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->access$300(Lcom/android/mms/ui/ConversationList;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 1303
    :goto_2
    invoke-static {}, Lcom/android/mms/ui/ConversationList;->access$3000()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1305
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->access$3002(Z)Z

    .line 1312
    .end local v11           #checkedCount:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    move-object v2, v0

    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->access$3100(Lcom/android/mms/ui/ConversationList;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    move-object v2, v0

    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->access$1400(Lcom/android/mms/ui/ConversationList;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelection(I)V

    .line 1320
    :cond_5
    :goto_3
    invoke-static {}, Lcom/android/mms/ui/ComposeMessage;->fillCache()V

    .line 1321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    move-object v2, v0

    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->access$600(Lcom/android/mms/ui/ConversationList;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/data/Conversation;->startCaching(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1296
    .restart local v11       #checkedCount:I
    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    .line 1301
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    move-object v2, v0

    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->access$300(Lcom/android/mms/ui/ConversationList;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_2

    .line 1314
    .end local v11           #checkedCount:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    move-object v2, v0

    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->access$3200(Lcom/android/mms/ui/ConversationList;)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_5

    .line 1315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    move-object v2, v0

    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->access$3300(Lcom/android/mms/ui/ConversationList;)V

    goto :goto_3

    .line 1325
    .end local v14           #fullCursorCount:I
    :sswitch_2
    const-string v2, "Mms/ConversationList"

    const-string v3, "onQueryComplete(),HAVE_LOCKED_MESSAGES_TOKEN"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1328
    .local v3, threadId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    move-object v2, v0

    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->access$3400(Lcom/android/mms/ui/ConversationList;)Landroid/content/DialogInterface;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/DialogInterface;->dismiss()V

    .line 1330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    move-object v2, v0

    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->access$3500(Lcom/android/mms/ui/ConversationList;)V

    .line 1332
    new-instance v2, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/mms/ui/ConversationList;->access$1800(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/mms/ui/ConversationList;->access$600(Lcom/android/mms/ui/ConversationList;)Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;-><init>(JLandroid/content/AsyncQueryHandler;Landroid/content/Context;[Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/mms/ui/ConversationList;->access$3600(Lcom/android/mms/ui/ConversationList;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->setDeleteStartHandler(Landroid/os/Handler;)Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    move-result-object v2

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_9

    .end local v3           #threadId:J
    const/4 v3, 0x1

    :goto_4
    if-eqz p3, :cond_a

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_a

    const/4 v4, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/mms/ui/ConversationList;->access$600(Lcom/android/mms/ui/ConversationList;)Landroid/app/Activity;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/mms/ui/ConversationList;->access$1700(Lcom/android/mms/ui/ConversationList;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_b

    const v6, 0x7f090189

    :goto_6
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/mms/ui/ConversationList;->confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v12

    .line 1338
    .local v12, dlg:Landroid/app/AlertDialog;
    invoke-virtual {v12}, Landroid/app/AlertDialog;->show()V

    .line 1339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    move-object v2, v0

    invoke-static {v2, v12}, Lcom/android/mms/ui/ConversationList;->access$3402(Lcom/android/mms/ui/ConversationList;Landroid/content/DialogInterface;)Landroid/content/DialogInterface;

    .line 1341
    const-string v2, "Mms/ConversationList"

    const-string v3, "onQueryComplete(),HAVE_LOCKED_MESSAGES_TOKEN"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1332
    .end local v12           #dlg:Landroid/app/AlertDialog;
    :cond_9
    const/4 v3, 0x0

    goto :goto_4

    :cond_a
    const/4 v4, 0x0

    goto :goto_5

    :cond_b
    const v6, 0x7f0901ba

    goto :goto_6

    .line 1344
    .restart local p2
    :sswitch_3
    if-eqz p3, :cond_0

    .line 1347
    const-string v2, "Mms/ConversationList"

    const-string v3, "onQueryComplete(),LOCKED_MESSAGES_IN_SELECTED_TOKEN"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    const/4 v15, 0x0

    .line 1349
    .local v15, hasLockedMessage:Z
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1351
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    move-object v2, v0

    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->access$200(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p3

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/android/mms/ui/ConversationListAdapter;->isCheckedThreadId(J)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1352
    const/4 v15, 0x1

    .line 1358
    :cond_d
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    move-object v2, v0

    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->access$200(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListAdapter;->getCheckedList()[Ljava/lang/Long;

    move-result-object v10

    .line 1359
    .local v10, threadList:[Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    move-object v2, v0

    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->access$3400(Lcom/android/mms/ui/ConversationList;)Landroid/content/DialogInterface;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/DialogInterface;->dismiss()V

    .line 1361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    move-object v2, v0

    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->access$3500(Lcom/android/mms/ui/ConversationList;)V

    .line 1363
    new-instance v5, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    const-wide/16 v6, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    move-object v2, v0

    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->access$1800(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    move-object v2, v0

    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->access$600(Lcom/android/mms/ui/ConversationList;)Landroid/app/Activity;

    move-result-object v9

    invoke-direct/range {v5 .. v10}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;-><init>(JLandroid/content/AsyncQueryHandler;Landroid/content/Context;[Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    move-object v2, v0

    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->access$3600(Lcom/android/mms/ui/ConversationList;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->setDeleteStartHandler(Landroid/os/Handler;)Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/mms/ui/ConversationList;->access$600(Lcom/android/mms/ui/ConversationList;)Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/mms/ui/ConversationList;->access$1700(Lcom/android/mms/ui/ConversationList;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_f

    const v5, 0x7f090189

    :goto_8
    invoke-static {v2, v3, v15, v4, v5}, Lcom/android/mms/ui/ConversationList;->confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v12

    .line 1368
    .restart local v12       #dlg:Landroid/app/AlertDialog;
    invoke-virtual {v12}, Landroid/app/AlertDialog;->show()V

    .line 1370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    move-object v2, v0

    invoke-static {v2, v12}, Lcom/android/mms/ui/ConversationList;->access$3402(Lcom/android/mms/ui/ConversationList;Landroid/content/DialogInterface;)Landroid/content/DialogInterface;

    .line 1372
    const-string v2, "Mms/ConversationList"

    const-string v3, "onQueryComplete(),LOCKED_MESSAGES_IN_SELECTED_TOKEN"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1355
    .end local v10           #threadList:[Ljava/lang/Long;
    .end local v12           #dlg:Landroid/app/AlertDialog;
    :cond_e
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_7

    .line 1363
    .restart local v10       #threadList:[Ljava/lang/Long;
    :cond_f
    const v5, 0x7f0901ba

    goto :goto_8

    .line 1242
    :sswitch_data_0
    .sparse-switch
        0x6a4 -> :sswitch_0
        0x6a5 -> :sswitch_1
        0x70b -> :sswitch_2
        0x70d -> :sswitch_3
    .end sparse-switch
.end method

.method public setmDeleteEventHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 1236
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    .line 1237
    return-void
.end method

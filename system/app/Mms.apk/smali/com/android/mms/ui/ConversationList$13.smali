.class Lcom/android/mms/ui/ConversationList$13;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList;)V
    .locals 0
    .parameter

    .prologue
    .line 967
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$13;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 12
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v11, "Mms/ConversationList"

    .line 969
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_0

    .line 970
    sparse-switch p2, :sswitch_data_0

    :cond_0
    move v6, v10

    .line 1038
    .end local p0
    :goto_0
    return v6

    .line 972
    .restart local p0
    :sswitch_0
    const-string v6, "Mms/ConversationList"

    const-string v6, "mThreadListKeyListener.onKey(),KEYCODE_DEL"

    invoke-static {v11, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$13;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v6}, Lcom/android/mms/ui/ConversationList;->access$1600(Lcom/android/mms/ui/ConversationList;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwListView;->getSelectedItemId()J

    move-result-wide v2

    .line 975
    .local v2, id:J
    cmp-long v6, v2, v7

    if-lez v6, :cond_1

    .line 976
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$13;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v6, v9}, Lcom/android/mms/ui/ConversationList;->access$1702(Lcom/android/mms/ui/ConversationList;I)I

    .line 977
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$13;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v6}, Lcom/android/mms/ui/ConversationList;->access$1800(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    move-result-object v6

    invoke-static {v2, v3, v6}, Lcom/android/mms/ui/ConversationList;->confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V

    :cond_1
    move v6, v9

    .line 979
    goto :goto_0

    .line 983
    .end local v2           #id:J
    :sswitch_1
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$13;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationList;->isDeleteMode()Z

    move-result v6

    if-nez v6, :cond_2

    .line 984
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$13;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v6}, Lcom/android/mms/ui/ConversationList;->access$1400(Lcom/android/mms/ui/ConversationList;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwListView;->getSelectedItemPosition()I

    move-result v6

    iget-object v7, p0, Lcom/android/mms/ui/ConversationList$13;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v7}, Lcom/android/mms/ui/ConversationList;->access$1400(Lcom/android/mms/ui/ConversationList;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwListView;->getCount()I

    move-result v7

    const/4 v8, 0x2

    sub-int/2addr v7, v8

    if-ne v6, v7, :cond_2

    .line 985
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$13;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v6}, Lcom/android/mms/ui/ConversationList;->access$1400(Lcom/android/mms/ui/ConversationList;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelection(I)V

    move v6, v9

    .line 986
    goto :goto_0

    :cond_2
    move v6, v10

    .line 990
    goto :goto_0

    .line 993
    :sswitch_2
    const-string v6, "Mms/ConversationList"

    const-string v6, "mThreadListKeyListener.onKey(),KEYCODE_DPAD_RIGHT"

    invoke-static {v11, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$13;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v6}, Lcom/android/mms/ui/ConversationList;->access$600(Lcom/android/mms/ui/ConversationList;)Landroid/app/Activity;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->requestFocusOnComposer()Z

    move-result v6

    goto :goto_0

    .line 1000
    .restart local p0
    :sswitch_3
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$13;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationList;->isDeleteMode()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1001
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$13;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v6}, Lcom/android/mms/ui/ConversationList;->access$1600(Lcom/android/mms/ui/ConversationList;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v5

    .line 1002
    .local v5, listView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ConversationListItem;

    .line 1003
    .local v1, headerView:Lcom/android/mms/ui/ConversationListItem;
    if-nez v1, :cond_3

    move v6, v10

    .line 1004
    goto :goto_0

    .line 1006
    :cond_3
    const/4 v4, 0x1

    .line 1007
    .local v4, isOpen:Z
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$13;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v6}, Lcom/android/mms/ui/ConversationList;->access$1600(Lcom/android/mms/ui/ConversationList;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwListView;->getSelectedItemId()J

    move-result-wide v2

    .line 1008
    .restart local v2       #id:J
    const-string v6, "Mms/ConversationList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KEYCODE_DPAD_CENTER  id ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$13;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v6}, Lcom/android/mms/ui/ConversationList;->access$200(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v6

    long-to-int v7, v2

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Lcom/android/mms/ui/ConversationListAdapter;->toggleCheckBox(J)Z

    move-result v4

    .line 1010
    invoke-virtual {v1, v4}, Lcom/android/mms/ui/ConversationListItem;->setCheckBox(Z)V

    .line 1011
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$13;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v6}, Lcom/android/mms/ui/ConversationList;->access$200(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationListAdapter;->getCheckedCount()I

    move-result v0

    .line 1012
    .local v0, checkedCount:I
    const-string v6, "Mms/ConversationList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KEYCODE_DPAD_CENTER  checkedCount ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$13;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v6}, Lcom/android/mms/ui/ConversationList;->access$200(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v6

    if-ne v0, v6, :cond_4

    .line 1014
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$13;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v6}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)Landroid/widget/CheckBox;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1018
    :goto_1
    if-lez v0, :cond_5

    .line 1019
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$13;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v6}, Lcom/android/mms/ui/ConversationList;->access$300(Lcom/android/mms/ui/ConversationList;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    :goto_2
    move v6, v9

    .line 1023
    goto/16 :goto_0

    .line 1016
    :cond_4
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$13;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v6}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)Landroid/widget/CheckBox;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 1021
    :cond_5
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$13;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v6}, Lcom/android/mms/ui/ConversationList;->access$300(Lcom/android/mms/ui/ConversationList;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_2

    .line 1025
    .end local v0           #checkedCount:I
    .end local v1           #headerView:Lcom/android/mms/ui/ConversationListItem;
    .end local v2           #id:J
    .end local v4           #isOpen:Z
    .end local v5           #listView:Lcom/sec/android/touchwiz/widget/TwListView;
    :cond_6
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$13;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v6}, Lcom/android/mms/ui/ConversationList;->access$1600(Lcom/android/mms/ui/ConversationList;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwListView;->getSelectedItemId()J

    move-result-wide v2

    .line 1026
    .restart local v2       #id:J
    cmp-long v6, v2, v7

    if-lez v6, :cond_7

    .line 1027
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$13;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v6, v2, v3}, Lcom/android/mms/ui/ConversationList;->access$1300(Lcom/android/mms/ui/ConversationList;J)V

    :cond_7
    move v6, v9

    .line 1029
    goto/16 :goto_0

    .line 970
    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_1
        0x16 -> :sswitch_2
        0x17 -> :sswitch_3
        0x43 -> :sswitch_0
    .end sparse-switch
.end method

.class Lcom/android/mms/ui/ConversationList$10;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;


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
    .line 711
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$10;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, l:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 713
    const-string v4, "Mms/ConversationList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onListItemClick(),position="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    instance-of v4, p2, Lcom/android/mms/ui/ConversationListItem;

    if-nez v4, :cond_0

    .line 739
    :goto_0
    return-void

    .line 719
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/android/mms/ui/ConversationListItem;

    move-object v2, v0

    .line 721
    .local v2, headerView:Lcom/android/mms/ui/ConversationListItem;
    const/4 v3, 0x1

    .line 722
    .local v3, isOpen:Z
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$10;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v4}, Lcom/android/mms/ui/ConversationList;->access$1200(Lcom/android/mms/ui/ConversationList;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 723
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$10;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v4}, Lcom/android/mms/ui/ConversationList;->access$200(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v4

    long-to-int v5, p4

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/android/mms/ui/ConversationListAdapter;->toggleCheckBox(J)Z

    move-result v3

    .line 724
    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ConversationListItem;->setCheckBox(Z)V

    .line 726
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$10;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v4}, Lcom/android/mms/ui/ConversationList;->access$200(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationListAdapter;->getCheckedCount()I

    move-result v1

    .line 727
    .local v1, checkedCount:I
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$10;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v4}, Lcom/android/mms/ui/ConversationList;->access$200(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v4

    if-ne v1, v4, :cond_1

    .line 728
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$10;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v4}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 732
    :goto_1
    if-lez v1, :cond_2

    .line 733
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$10;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v4}, Lcom/android/mms/ui/ConversationList;->access$300(Lcom/android/mms/ui/ConversationList;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_0

    .line 730
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$10;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v4}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 735
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$10;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v4}, Lcom/android/mms/ui/ConversationList;->access$300(Lcom/android/mms/ui/ConversationList;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_0

    .line 737
    .end local v1           #checkedCount:I
    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$10;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v4, p4, p5}, Lcom/android/mms/ui/ConversationList;->access$1300(Lcom/android/mms/ui/ConversationList;J)V

    goto :goto_0
.end method

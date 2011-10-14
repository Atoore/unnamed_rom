.class Lcom/android/mms/ui/ConversationList$2;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationList;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V
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
    .line 272
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$2;->this$0:Lcom/android/mms/ui/ConversationList;

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

    .line 274
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList$2;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v3}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v7

    .line 276
    .local v1, checked:Z
    :goto_0
    if-eqz v1, :cond_3

    .line 277
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList$2;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v3}, Lcom/android/mms/ui/ConversationList;->access$200(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 278
    .local v0, c:Landroid/database/Cursor;
    const-string v3, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 279
    .local v2, index:I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 281
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList$2;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v3}, Lcom/android/mms/ui/ConversationList;->access$200(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/mms/ui/ConversationListAdapter;->setChecked(J)V

    .line 282
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 287
    .end local v0           #c:Landroid/database/Cursor;
    .end local v2           #index:I
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList$2;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v3}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 288
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList$2;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v3}, Lcom/android/mms/ui/ConversationList;->access$200(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListAdapter;->getCheckedCount()I

    move-result v3

    if-lez v3, :cond_4

    .line 289
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList$2;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v3}, Lcom/android/mms/ui/ConversationList;->access$300(Lcom/android/mms/ui/ConversationList;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 293
    :goto_2
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList$2;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v3}, Lcom/android/mms/ui/ConversationList;->access$200(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListAdapter;->notifyDataSetChanged()V

    .line 294
    return-void

    .end local v1           #checked:Z
    :cond_2
    move v1, v6

    .line 274
    goto :goto_0

    .line 285
    .restart local v1       #checked:Z
    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList$2;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v3}, Lcom/android/mms/ui/ConversationList;->access$200(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListAdapter;->clearCheckedList()V

    goto :goto_1

    .line 291
    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList$2;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v3}, Lcom/android/mms/ui/ConversationList;->access$300(Lcom/android/mms/ui/ConversationList;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_2
.end method

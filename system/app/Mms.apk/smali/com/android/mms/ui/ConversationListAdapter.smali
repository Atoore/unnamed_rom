.class public Lcom/android/mms/ui/ConversationListAdapter;
.super Landroid/widget/CursorAdapter;
.source "ConversationListAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;
    }
.end annotation


# static fields
.field private static mCheckedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFactory:Landroid/view/LayoutInflater;

.field private mIsDeleteMode:Z

.field private mIsSplitMode:Z

.field private mOnContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

.field private mSelectedThreadId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 52
    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsDeleteMode:Z

    .line 54
    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsSplitMode:Z

    .line 58
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mSelectedThreadId:J

    .line 62
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mFactory:Landroid/view/LayoutInflater;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    .line 65
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 16
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v14, 0x0

    const-string v15, "Mms/ConversationListAdapter"

    .line 69
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/mms/ui/ConversationListItem;

    move v10, v0

    if-nez v10, :cond_1

    .line 70
    const-string v10, "Mms/ConversationListAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected bound view: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v15, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/mms/ui/ConversationListItem;

    move-object v9, v0

    .line 74
    .local v9, headerView:Lcom/android/mms/ui/ConversationListItem;
    invoke-static/range {p2 .. p3}, Lcom/android/mms/data/Conversation;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v6

    .line 76
    .local v6, conv:Lcom/android/mms/data/Conversation;
    new-instance v4, Lcom/android/mms/ui/ConversationListItemData;

    move-object v0, v4

    move-object/from16 v1, p2

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/ConversationListItemData;-><init>(Landroid/content/Context;Lcom/android/mms/data/Conversation;)V

    .line 77
    .local v4, ch:Lcom/android/mms/ui/ConversationListItemData;
    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationListItemData;->updateRecipients()V

    .line 78
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/ConversationListAdapter;->mIsDeleteMode:Z

    move v10, v0

    invoke-virtual {v9, v10}, Lcom/android/mms/ui/ConversationListItem;->setDeleteMode(Z)V

    .line 79
    const/4 v5, 0x0

    .line 80
    .local v5, checked:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/ConversationListAdapter;->mIsDeleteMode:Z

    move v10, v0

    if-eqz v10, :cond_2

    .line 81
    sget-object v10, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 83
    if-nez v5, :cond_2

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListAdapter;->mContext:Landroid/content/Context;

    move-object v10, v0

    check-cast v10, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v10, v14}, Lcom/android/mms/ui/ConversationComposer;->setConversationSelectAll(Z)V

    .line 87
    :cond_2
    invoke-virtual {v9, v5}, Lcom/android/mms/ui/ConversationListItem;->setCheckBox(Z)V

    .line 88
    move-object v0, v9

    move-object/from16 v1, p2

    move-object v2, v4

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/ConversationListItem;->bind(Landroid/content/Context;Lcom/android/mms/ui/ConversationListItemData;Landroid/database/Cursor;)V

    .line 91
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/ConversationListAdapter;->mSelectedThreadId:J

    move-wide v10, v0

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationListItemData;->getThreadId()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-nez v10, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/ConversationListAdapter;->mIsDeleteMode:Z

    move v10, v0

    if-nez v10, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/ConversationListAdapter;->mIsSplitMode:Z

    move v10, v0

    if-eqz v10, :cond_4

    .line 92
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/mms/ui/ConversationListItem;->setMessagePointer(Z)V

    .line 97
    :goto_1
    const-string v10, "Mms/ConversationListAdapter"

    const-string v10, "ConversationListAdapter.bind() complete"

    invoke-static {v15, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    sget v10, Lcom/android/mms/ui/ConversationList;->bindCount:I

    add-int/lit8 v10, v10, 0x1

    sput v10, Lcom/android/mms/ui/ConversationList;->bindCount:I

    .line 100
    sget v10, Lcom/android/mms/ui/ConversationList;->bindCount:I

    const/16 v11, 0x9

    if-ne v10, v11, :cond_3

    .line 101
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    sget-wide v12, Lcom/android/mms/ui/ConversationList;->createdAt:J

    sub-long v7, v10, v12

    .line 102
    .local v7, elapsed:J
    sget v10, Lcom/android/mms/ui/ConversationList;->bindCount:I

    move-wide v0, v7

    move-object/from16 v2, p2

    move v3, v10

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/ConversationList;->showElapsed(JLandroid/content/Context;I)V

    .line 105
    .end local v7           #elapsed:J
    :cond_3
    sget v10, Lcom/android/mms/ui/ConversationList;->bindCount:I

    const/16 v11, 0x12

    if-ne v10, v11, :cond_0

    .line 106
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    sget-wide v12, Lcom/android/mms/ui/ConversationList;->createdAt:J

    sub-long v7, v10, v12

    .line 107
    .restart local v7       #elapsed:J
    sget v10, Lcom/android/mms/ui/ConversationList;->bindCount:I

    move-wide v0, v7

    move-object/from16 v2, p2

    move v3, v10

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/ConversationList;->showElapsed(JLandroid/content/Context;I)V

    goto/16 :goto_0

    .line 94
    .end local v7           #elapsed:J
    :cond_4
    invoke-virtual {v9, v14}, Lcom/android/mms/ui/ConversationListItem;->setMessagePointer(Z)V

    goto :goto_1
.end method

.method public clearCheckedList()V
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 165
    return-void
.end method

.method public disableSplitMode()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsSplitMode:Z

    .line 153
    return-void
.end method

.method public enableSplitMode()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsSplitMode:Z

    .line 149
    return-void
.end method

.method public getCheckedCount()I
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCheckedList()[Ljava/lang/Long;
    .locals 2

    .prologue
    .line 187
    sget-object v0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/Long;

    check-cast p0, [Ljava/lang/Long;

    return-object p0
.end method

.method public initListItemSelectedThreadId()V
    .locals 2

    .prologue
    .line 199
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mSelectedThreadId:J

    .line 200
    return-void
.end method

.method public isCheckedThreadId(J)Z
    .locals 2
    .parameter "threadId"

    .prologue
    .line 183
    sget-object v0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mFactory:Landroid/view/LayoutInflater;

    const v1, 0x7f03000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onContentChanged()V
    .locals 2

    .prologue
    .line 131
    const-string v0, "Mms/ConversationListAdapter"

    const-string v1, "ConversationListAdapter: onContentChanged"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;->onContentChanged(Lcom/android/mms/ui/ConversationListAdapter;)V

    .line 137
    :cond_0
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 112
    move-object v0, p1

    check-cast v0, Lcom/android/mms/ui/ConversationListItem;

    move-object v1, v0

    .line 113
    .local v1, headerView:Lcom/android/mms/ui/ConversationListItem;
    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListItem;->unbind()V

    .line 114
    return-void
.end method

.method public reCalulateCheckedThreads()V
    .locals 6

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 207
    .local v1, currentCursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    sget-object v4, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 210
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v2, newCheckedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v4, "_id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 215
    .local v0, colId:I
    :cond_2
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 216
    .local v3, threadId:Ljava/lang/Long;
    sget-object v4, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 217
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 221
    sput-object v2, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public setChecked(J)V
    .locals 2
    .parameter "threadId"

    .prologue
    .line 157
    sget-object v0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 160
    :cond_0
    sget-object v0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setDeleteMode(Z)V
    .locals 1
    .parameter "isDeleteMode"

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsDeleteMode:Z

    .line 142
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsDeleteMode:Z

    if-eqz v0, :cond_0

    .line 143
    sget-object v0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 144
    :cond_0
    return-void
.end method

.method public setListItemSelected(J)V
    .locals 0
    .parameter "threadId"

    .prologue
    .line 192
    iput-wide p1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mSelectedThreadId:J

    .line 193
    return-void
.end method

.method public setOnContentChangedListener(Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    .line 127
    return-void
.end method

.method public toggleCheckBox(J)Z
    .locals 3
    .parameter "threadId"

    .prologue
    .line 168
    sget-object v1, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 170
    .local v0, checked:Z
    if-eqz v0, :cond_0

    .line 171
    sget-object v1, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 175
    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 173
    :cond_0
    sget-object v1, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 175
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

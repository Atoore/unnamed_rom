.class public Lcom/android/mms/ui/MessageListAdapter;
.super Landroid/widget/CursorAdapter;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;,
        Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;,
        Lcom/android/mms/ui/MessageListAdapter$ArrayData;
    }
.end annotation


# static fields
.field static final PROJECTION:[Ljava/lang/String;

.field public static animationIdx:I


# instance fields
.field private mCheckedMmsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedSmsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedWpmList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

.field private mContext:Landroid/content/Context;

.field private mDateSeperatorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/MessageListAdapter$ArrayData;",
            ">;"
        }
    .end annotation
.end field

.field private mDummyCheckedMmsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDummyCheckedSmsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDummyCheckedWpmList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mHighlight:Ljava/util/regex/Pattern;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mIsDeleteMode:Z

.field private final mListView:Landroid/widget/ListView;

.field private final mMessageItemCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/mms/ui/MessageItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mMsgListItemHandler:Landroid/os/Handler;

.field private mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-string v5, "read"

    const-string v4, "locked"

    const-string v3, "date"

    .line 68
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "transport_type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "date"

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v2, "read"

    aput-object v5, v0, v1

    const/4 v1, 0x7

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "locked"

    aput-object v4, v0, v1

    const/16 v1, 0xa

    const-string v2, "error_code"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "date"

    aput-object v3, v0, v1

    const/16 v1, 0xe

    const-string v2, "read"

    aput-object v5, v0, v1

    const/16 v1, 0xf

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "d_rpt"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "rr"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "err_type"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "locked"

    aput-object v4, v0, v1

    const/16 v1, 0x15

    const-string v2, "group_id"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "group_type"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "href"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "si_id"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "created"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "si_expires"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "action"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    .line 210
    const/4 v0, -0x1

    sput v0, Lcom/android/mms/ui/MessageListAdapter;->animationIdx:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;ZLjava/util/regex/Pattern;)V
    .locals 4
    .parameter "context"
    .parameter "c"
    .parameter "listView"
    .parameter "useDefaultColumnsMap"
    .parameter "highlight"

    .prologue
    const/4 v0, 0x0

    .line 180
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 147
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsDeleteMode:Z

    .line 181
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    .line 182
    iput-object p5, p0, Lcom/android/mms/ui/MessageListAdapter;->mHighlight:Ljava/util/regex/Pattern;

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    .line 188
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 189
    iput-object p3, p0, Lcom/android/mms/ui/MessageListAdapter;->mListView:Landroid/widget/ListView;

    .line 190
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$1;

    const/16 v1, 0xa

    const/high16 v2, 0x3f80

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/mms/ui/MessageListAdapter$1;-><init>(Lcom/android/mms/ui/MessageListAdapter;IFZ)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    .line 201
    if-eqz p4, :cond_0

    .line 202
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    .line 207
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mDateSeperatorList:Ljava/util/ArrayList;

    .line 208
    return-void

    .line 204
    :cond_0
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0, p2}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    goto :goto_0
.end method

.method private static getKey(Ljava/lang/String;J)J
    .locals 2
    .parameter "type"
    .parameter "id"

    .prologue
    .line 332
    const-string v0, "mms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    neg-long v0, p1

    .line 335
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, p1

    goto :goto_0
.end method

.method private isCursorValid(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 325
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    :cond_0
    const/4 v0, 0x0

    .line 328
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public backupCheckedList()V
    .locals 1

    .prologue
    .line 923
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mDummyCheckedSmsList:Ljava/util/ArrayList;

    .line 924
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mDummyCheckedMmsList:Ljava/util/ArrayList;

    .line 925
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mDummyCheckedWpmList:Ljava/util/ArrayList;

    .line 927
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListAdapter;->clearCheckedList()V

    .line 928
    return-void
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 17
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 224
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/mms/ui/MessageListItem;

    move v12, v0

    if-eqz v12, :cond_1

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    move-object v12, v0

    iget v12, v12, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    move-object/from16 v0, p3

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 226
    .local v11, type:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    move-object v12, v0

    iget v12, v12, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    move-object/from16 v0, p3

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 228
    .local v8, msgId:J
    move-object/from16 v0, p0

    move-object v1, v11

    move-wide v2, v8

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v10

    .line 229
    .local v10, msgItem:Lcom/android/mms/ui/MessageItem;
    if-eqz v10, :cond_1

    .line 231
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    .line 232
    .local v6, i:I
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    move-object v7, v0

    .line 233
    .local v7, item:Lcom/android/mms/ui/MessageListItem;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageListAdapter;->mIsDeleteMode:Z

    move v12, v0

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    .line 234
    const/4 v5, 0x0

    .line 235
    .local v5, checked:Z
    const-string v12, "sms"

    iget-object v13, v10, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    move-object v12, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 243
    :goto_0
    const/4 v12, 0x0

    invoke-virtual {v7, v12, v5}, Lcom/android/mms/ui/MessageListItem;->setCheckBox(IZ)V

    .line 245
    if-nez v5, :cond_0

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/android/mms/ui/ConversationComposer;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationComposer;->setMessageSelectAll(Z)V

    .line 251
    .end local v5           #checked:Z
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListAdapter;->mDateSeperatorList:Ljava/util/ArrayList;

    move-object v12, v0

    new-instance v13, Lcom/android/mms/ui/MessageListAdapter$ArrayData;

    iget-wide v14, v10, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-object v0, v10

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object v0, v13

    move-object/from16 v1, p0

    move-wide v2, v14

    move-object/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/MessageListAdapter$ArrayData;-><init>(Lcom/android/mms/ui/MessageListAdapter;JLjava/lang/String;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    iput-boolean v12, v10, Lcom/android/mms/ui/MessageItem;->mHasSeperator:Z

    .line 253
    move-object v0, v7

    move-object v1, v10

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageListItem;->bind(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListAdapter;->mMsgListItemHandler:Landroid/os/Handler;

    move-object v12, v0

    invoke-virtual {v7, v12}, Lcom/android/mms/ui/MessageListItem;->setMsgListItemHandler(Landroid/os/Handler;)V

    .line 256
    sget v12, Lcom/android/mms/ui/MessageListAdapter;->animationIdx:I

    if-eq v6, v12, :cond_5

    .line 257
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Lcom/android/mms/ui/MessageListItem;->setVisibility(I)V

    .line 264
    .end local v6           #i:I
    .end local v7           #item:Lcom/android/mms/ui/MessageListItem;
    .end local v8           #msgId:J
    .end local v10           #msgItem:Lcom/android/mms/ui/MessageItem;
    .end local v11           #type:Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 237
    .restart local v5       #checked:Z
    .restart local v6       #i:I
    .restart local v7       #item:Lcom/android/mms/ui/MessageListItem;
    .restart local v8       #msgId:J
    .restart local v10       #msgItem:Lcom/android/mms/ui/MessageItem;
    .restart local v11       #type:Ljava/lang/String;
    .restart local p1
    :cond_2
    const-string v12, "wpm"

    iget-object v13, v10, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    move-object v12, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0

    .line 240
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    move-object v12, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0

    .line 248
    .end local v5           #checked:Z
    :cond_4
    const/16 v12, 0x8

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Lcom/android/mms/ui/MessageListItem;->setCheckBox(IZ)V

    goto :goto_1

    .line 259
    .end local p1
    :cond_5
    const/4 v12, 0x4

    invoke-virtual {v7, v12}, Lcom/android/mms/ui/MessageListItem;->setVisibility(I)V

    goto :goto_2
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 983
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 984
    return-void
.end method

.method public cleanDummyCheckedList()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 941
    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mDummyCheckedSmsList:Ljava/util/ArrayList;

    .line 942
    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mDummyCheckedMmsList:Ljava/util/ArrayList;

    .line 943
    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mDummyCheckedWpmList:Ljava/util/ArrayList;

    .line 944
    return-void
.end method

.method public clearCheckedList()V
    .locals 2

    .prologue
    .line 877
    const-string v0, "Mms/MessageListAdapter"

    const-string v1, "clearCheckedList()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 880
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 881
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 882
    return-void
.end method

.method public getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;
    .locals 8
    .parameter "type"
    .parameter "msgId"
    .parameter "c"

    .prologue
    .line 311
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-static {p1, p2, p3}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/ui/MessageItem;

    .line 312
    .local v7, item:Lcom/android/mms/ui/MessageItem;
    if-nez v7, :cond_0

    if-eqz p4, :cond_0

    invoke-direct {p0, p4}, Lcom/android/mms/ui/MessageListAdapter;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    :try_start_0
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mHighlight:Ljava/util/regex/Pattern;

    move-object v2, p1

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    .end local v7           #item:Lcom/android/mms/ui/MessageItem;
    .local v0, item:Lcom/android/mms/ui/MessageItem;
    :try_start_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 320
    :goto_0
    return-object v0

    .line 316
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v7       #item:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v1

    move-object v6, v1

    move-object v0, v7

    .line 317
    .end local v7           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    .local v6, e:Lcom/google/android/mms/MmsException;
    :goto_1
    const-string v1, "Mms/MessageListAdapter"

    invoke-virtual {v6}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 316
    .end local v6           #e:Lcom/google/android/mms/MmsException;
    :catch_1
    move-exception v1

    move-object v6, v1

    goto :goto_1

    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v7       #item:Lcom/android/mms/ui/MessageItem;
    :cond_0
    move-object v0, v7

    .end local v7           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_0
.end method

.method public getCheckedCount()I
    .locals 2

    .prologue
    .line 909
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 215
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 218
    :goto_0
    return-object v1

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "Mms/MessageListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getView() IllegalStateException position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " convertView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " parent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const/4 v1, 0x0

    invoke-super {p0, v1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public isCheckedMessageId(JLjava/lang/String;)Z
    .locals 2
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    .line 913
    const-string v0, "sms"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 918
    :goto_0
    return v0

    .line 915
    :cond_0
    const-string v0, "wpm"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 916
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 918
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030016

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 282
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 283
    const-string v0, "Mms/MessageListAdapter"

    const-string v1, "MessageListAdapter.notifyDataSetChanged()."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 286
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 288
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;->onDataSetChanged(Lcom/android/mms/ui/MessageListAdapter;)V

    .line 291
    :cond_0
    return-void
.end method

.method protected onContentChanged()V
    .locals 1

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;->onContentChanged(Lcom/android/mms/ui/MessageListAdapter;)V

    .line 300
    :cond_0
    return-void
.end method

.method public refreshChecked(JLjava/lang/String;)V
    .locals 2
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    .line 931
    const-string v0, "sms"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mDummyCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 932
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 938
    :cond_0
    :goto_0
    return-void

    .line 933
    :cond_1
    const-string v0, "wpm"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mDummyCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 934
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 935
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mDummyCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 936
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setChecked(JLjava/lang/String;)V
    .locals 2
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    .line 858
    const-string v0, "sms"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 859
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 874
    :cond_0
    :goto_0
    return-void

    .line 862
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 863
    :cond_2
    const-string v0, "wpm"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 864
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 869
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 872
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setDeleteMode(Z)V
    .locals 1
    .parameter "isDeleteMode"

    .prologue
    .line 848
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsDeleteMode:Z

    .line 850
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsDeleteMode:Z

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 852
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 853
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 855
    :cond_0
    return-void
.end method

.method public setMsgListItemHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMsgListItemHandler:Landroid/os/Handler;

    .line 278
    return-void
.end method

.method public setOnDataSetChangedListener(Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    .line 274
    return-void
.end method

.method public toggleCheckBox(JLjava/lang/String;)Z
    .locals 3
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    const/4 v2, 0x0

    .line 885
    const-string v0, "sms"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 886
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move v0, v2

    .line 905
    :goto_0
    return v0

    .line 890
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 905
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 891
    :cond_1
    const-string v0, "wpm"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 892
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 893
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move v0, v2

    .line 894
    goto :goto_0

    .line 896
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 898
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 899
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move v0, v2

    .line 900
    goto :goto_0

    .line 902
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

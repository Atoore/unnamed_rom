.class public Lcom/android/mms/ui/SimMessageListAdapter;
.super Landroid/widget/CursorAdapter;
.source "SimMessageListAdapter.java"


# instance fields
.field protected mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

.field protected mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 1
    .parameter "context"
    .parameter "c"
    .parameter "autoRequery"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 34
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 36
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0, p2}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    .line 37
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 21
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 47
    const v17, 0x7f080050

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 48
    .local v14, textView:Landroid/widget/TextView;
    if-nez v14, :cond_0

    .line 109
    :goto_0
    return-void

    .line 51
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SimMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsType:I

    move/from16 v17, v0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 52
    .local v16, type:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SimMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDate:I

    move/from16 v17, v0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 53
    .local v8, date:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SimMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsAddress:I

    move/from16 v17, v0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 54
    .local v5, address:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SimMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsBody:I

    move/from16 v17, v0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 56
    .local v6, body:Ljava/lang/String;
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 58
    .local v7, buf:Landroid/text/SpannableStringBuilder;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SimMessageListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f09000f

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 63
    .local v10, displayName:Ljava/lang/String;
    :goto_1
    const-string v17, "arrow"

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 65
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    .line 66
    .local v12, startName:I
    invoke-virtual {v7, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 67
    new-instance v17, Landroid/text/style/TextAppearanceSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SimMessageListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x209000f

    invoke-direct/range {v17 .. v19}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v18

    const/16 v19, 0x21

    move-object v0, v7

    move-object/from16 v1, v17

    move v2, v12

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 70
    const-string v17, "\n"

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 72
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 73
    const-string v6, ""

    .line 74
    :cond_1
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    .line 75
    .local v11, startBody:I
    invoke-virtual {v7, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 76
    new-instance v17, Landroid/text/style/TextAppearanceSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SimMessageListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x209000e

    invoke-direct/range {v17 .. v19}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v18

    const/16 v19, 0x21

    move-object v0, v7

    move-object/from16 v1, v17

    move v2, v11

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 79
    new-instance v17, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v18, 0x10

    const/16 v19, 0x1

    invoke-direct/range {v17 .. v19}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v18

    const/16 v19, 0x21

    move-object v0, v7

    move-object/from16 v1, v17

    move v2, v11

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 84
    packed-switch v16, :pswitch_data_0

    .line 108
    :goto_2
    :pswitch_0
    invoke-virtual {v14, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 61
    .end local v10           #displayName:Ljava/lang/String;
    .end local v11           #startBody:I
    .end local v12           #startName:I
    :cond_2
    const/16 v17, 0x1

    move-object v0, v5

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v10

    .restart local v10       #displayName:Ljava/lang/String;
    goto/16 :goto_1

    .line 86
    .restart local v11       #startBody:I
    .restart local v12       #startName:I
    :pswitch_1
    new-instance v17, Landroid/text/style/ImageSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SimMessageListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0200fe

    invoke-direct/range {v17 .. v19}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    const/16 v18, 0x0

    const-string v19, "arrow"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x21

    move-object v0, v7

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 89
    const v17, 0x7f090015

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, p2

    move-wide v1, v8

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 92
    .local v15, timeStamp:Ljava/lang/String;
    const-string v17, "\n"

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 93
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v13

    .line 94
    .local v13, startTimeStamp:I
    invoke-virtual {v7, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 95
    new-instance v17, Landroid/text/style/TextAppearanceSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SimMessageListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x2090011

    invoke-direct/range {v17 .. v19}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v18

    const/16 v19, 0x21

    move-object v0, v7

    move-object/from16 v1, v17

    move v2, v13

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2

    .line 103
    .end local v13           #startTimeStamp:I
    .end local v15           #timeStamp:Ljava/lang/String;
    :pswitch_2
    new-instance v17, Landroid/text/style/ImageSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SimMessageListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0200db

    invoke-direct/range {v17 .. v19}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    const/16 v18, 0x0

    const-string v19, "arrow"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x21

    move-object v0, v7

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
    .parameter "parent"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03002b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

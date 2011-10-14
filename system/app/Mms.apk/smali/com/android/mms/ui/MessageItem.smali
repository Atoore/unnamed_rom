.class public Lcom/android/mms/ui/MessageItem;
.super Ljava/lang/Object;
.source "MessageItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageItem$DeliveryStatus;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field mAddress:Ljava/lang/String;

.field mAttachmentType:I

.field mBody:Ljava/lang/String;

.field private mBoxId:I

.field mCachedFormattedMessage:Ljava/lang/CharSequence;

.field mContact:Ljava/lang/String;

.field final mContext:Landroid/content/Context;

.field mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

.field mErrorCode:I

.field mErrorType:I

.field mExpireDate:Ljava/lang/String;

.field mGroupId:J

.field mGroupType:I

.field mHasAttachment:Z

.field mHasDrmContents:Z

.field mHasSeperator:Z

.field mHighlight:Ljava/util/regex/Pattern;

.field mIsCbSms:Z

.field mLastSendingState:Z

.field mLocked:Z

.field mMMSRead:I

.field mMessageSize:I

.field mMessageType:I

.field mMessageUri:Landroid/net/Uri;

.field final mMsgId:J

.field mReadReport:Z

.field mSMSRead:I

.field mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field mSubject:Ljava/lang/String;

.field final mThreadId:J

.field mTime:J

.field mTimestamp:Ljava/lang/String;

.field final mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "Mms/MessageItem"

    sput-object v0, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;)V
    .locals 34
    .parameter "context"
    .parameter "type"
    .parameter "cursor"
    .parameter "columnsMap"
    .parameter "highlight"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const-wide/16 v27, 0x0

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mGroupId:J

    .line 145
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mGroupType:I

    .line 153
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    .line 154
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    move/from16 v27, v0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    .line 155
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mHighlight:Ljava/util/regex/Pattern;

    .line 156
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    .line 157
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnThreadId:I

    move/from16 v27, v0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    .line 158
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mHasSeperator:Z

    .line 160
    const-string v27, "sms"

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_9

    .line 161
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    .line 163
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsStatus:I

    move/from16 v27, v0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 164
    .local v22, status:J
    const-wide/16 v27, -0x1

    cmp-long v27, v22, v27

    if-nez v27, :cond_2

    .line 166
    sget-object v27, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    .line 178
    :goto_0
    sget-object v27, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-wide/from16 v28, v0

    invoke-static/range {v27 .. v29}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    .line 180
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsType:I

    move/from16 v27, v0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    .line 181
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsAddress:I

    move/from16 v27, v0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    .line 183
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsRead:I

    move/from16 v27, v0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mSMSRead:I

    .line 185
    const-string v27, "CBmessages"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mIsCbSms:Z

    .line 186
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 187
    const v27, 0x7f090011

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 189
    .local v13, meString:Ljava/lang/String;
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    .line 197
    .end local v13           #meString:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsBody:I

    move/from16 v27, v0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 200
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDate:I

    move/from16 v27, v0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 202
    .local v8, date:J
    move-wide v0, v8

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mTime:J

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v27

    if-nez v27, :cond_0

    .line 210
    const v27, 0x7f090015

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x1

    move-object/from16 v0, p1

    move-wide v1, v8

    move/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, p1

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    .line 215
    :cond_0
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsLocked:I

    move/from16 v27, v0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    if-eqz v27, :cond_8

    const/16 v27, 0x1

    :goto_2
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    .line 216
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsErrorCode:I

    move/from16 v27, v0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mErrorCode:I

    .line 219
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsGroupId:I

    move/from16 v27, v0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mGroupId:J

    .line 220
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsGroupType:I

    move/from16 v27, v0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mGroupType:I

    .line 399
    .end local v8           #date:J
    .end local v22           #status:J
    :cond_1
    :goto_3
    return-void

    .line 167
    .restart local v22       #status:J
    :cond_2
    const-wide/16 v27, 0x40

    cmp-long v27, v22, v27

    if-ltz v27, :cond_3

    .line 169
    sget-object v27, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->FAILED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    goto/16 :goto_0

    .line 170
    :cond_3
    const-wide/16 v27, 0x20

    cmp-long v27, v22, v27

    if-ltz v27, :cond_4

    .line 172
    sget-object v27, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->PENDING:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    goto/16 :goto_0

    .line 175
    :cond_4
    sget-object v27, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    goto/16 :goto_0

    .line 190
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->mIsCbSms:Z

    move/from16 v27, v0

    if-eqz v27, :cond_6

    .line 191
    const v27, 0x7f090123

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    goto/16 :goto_1

    .line 194
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_7

    const-string v27, ""

    :goto_4
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v27

    goto :goto_4

    .line 215
    .restart local v8       #date:J
    :cond_8
    const/16 v27, 0x0

    goto/16 :goto_2

    .line 223
    .end local v8           #date:J
    .end local v22           #status:J
    :cond_9
    const-string v27, "mms"

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_16

    .line 224
    sget-object v27, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-wide/from16 v28, v0

    invoke-static/range {v27 .. v29}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    .line 225
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageBox:I

    move/from16 v27, v0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    .line 226
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageType:I

    move/from16 v27, v0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    .line 228
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsRead:I

    move/from16 v27, v0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mMMSRead:I

    .line 229
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsErrorType:I

    move/from16 v27, v0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mErrorType:I

    .line 230
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubject:I

    move/from16 v27, v0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 231
    .local v24, subject:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_a

    .line 232
    new-instance v26, Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubjectCharset:I

    move/from16 v27, v0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    invoke-static/range {v24 .. v24}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v28

    invoke-direct/range {v26 .. v28}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 235
    .local v26, v:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    .line 237
    .end local v26           #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_a
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsLocked:I

    move/from16 v27, v0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    if-eqz v27, :cond_b

    const/16 v27, 0x1

    :goto_5
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v17

    .line 241
    .local v17, p:Lcom/google/android/mms/pdu/PduPersister;
    const/16 v27, 0x82

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_c

    .line 242
    sget-object v27, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v16

    check-cast v16, Lcom/google/android/mms/pdu/NotificationInd;

    .line 244
    .local v16, notifInd:Lcom/google/android/mms/pdu/NotificationInd;
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/MessageItem;->interpretFrom(Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V

    .line 246
    new-instance v27, Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 247
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageSize()J

    move-result-wide v27

    move-wide/from16 v0, v27

    long-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    .line 248
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDate:I

    move/from16 v27, v0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    const-wide/16 v29, 0x3e8

    mul-long v27, v27, v29

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mTime:J

    .line 249
    const v27, 0x7f090016

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/NotificationInd;->getExpiry()J

    move-result-wide v30

    const-wide/16 v32, 0x3e8

    mul-long v30, v30, v32

    const/16 v32, 0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v30

    move/from16 v3, v32

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, p1

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mExpireDate:Ljava/lang/String;

    .line 325
    .end local v16           #notifInd:Lcom/google/android/mms/pdu/NotificationInd;
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v27

    if-nez v27, :cond_1

    .line 330
    const v27, 0x7f090015

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mTime:J

    move-wide/from16 v30, v0

    const/16 v32, 0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v30

    move/from16 v3, v32

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, p1

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    goto/16 :goto_3

    .line 237
    .end local v17           #p:Lcom/google/android/mms/pdu/PduPersister;
    :cond_b
    const/16 v27, 0x0

    goto/16 :goto_5

    .line 252
    .restart local v17       #p:Lcom/google/android/mms/pdu/PduPersister;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v14

    check-cast v14, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .line 253
    .local v14, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual {v14}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v27

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/mms/model/SlideshowModel;->isRawAttachmentPresent()Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mHasAttachment:Z

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/mms/model/SlideshowModel;->isDrmContentsPresent()Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mHasDrmContents:Z

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/mms/ui/MessageUtils;->getAttachmentType(Lcom/android/mms/model/SlideshowModel;)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    .line 258
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    move/from16 v27, v0

    const/16 v28, 0x84

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_10

    .line 259
    move-object v0, v14

    check-cast v0, Lcom/google/android/mms/pdu/RetrieveConf;

    move-object/from16 v20, v0

    .line 260
    .local v20, retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/RetrieveConf;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/MessageItem;->interpretFrom(Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V

    .line 261
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/RetrieveConf;->getDate()J

    move-result-wide v27

    const-wide/16 v29, 0x3e8

    mul-long v27, v27, v29

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mTime:J

    .line 268
    .end local v14           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .end local v20           #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    :goto_7
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsDeliveryReport:I

    move/from16 v27, v0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 269
    .local v18, report:Ljava/lang/String;
    if-eqz v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v27, v0

    const v28, 0x7f090011

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_11

    .line 271
    :cond_d
    sget-object v27, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    .line 287
    :goto_8
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsReadReport:I

    move/from16 v27, v0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 288
    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v27, v0

    const v28, 0x7f090011

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_13

    .line 290
    :cond_e
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    .line 303
    :goto_9
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v21

    .line 304
    .local v21, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v21, :cond_f

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v27

    if-eqz v27, :cond_f

    .line 305
    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v25

    .line 306
    .local v25, tm:Lcom/android/mms/model/TextModel;
    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/model/TextModel;->isDrmProtected()Z

    move-result v27

    if-eqz v27, :cond_15

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const v28, 0x7f090020

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    .line 322
    .end local v21           #slide:Lcom/android/mms/model/SlideModel;
    .end local v25           #tm:Lcom/android/mms/model/TextModel;
    :cond_f
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    goto/16 :goto_6

    .line 264
    .end local v18           #report:Ljava/lang/String;
    .restart local v14       #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :cond_10
    const v27, 0x7f090011

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    .line 265
    check-cast v14, Lcom/google/android/mms/pdu/SendReq;

    .end local v14           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual {v14}, Lcom/google/android/mms/pdu/SendReq;->getDate()J

    move-result-wide v27

    const-wide/16 v29, 0x3e8

    mul-long v27, v27, v29

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mTime:J

    goto/16 :goto_7

    .line 275
    .restart local v18       #report:Ljava/lang/String;
    :cond_11
    :try_start_1
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 276
    .local v19, reportInt:I
    const/16 v27, 0x80

    move/from16 v0, v19

    move/from16 v1, v27

    if-ne v0, v1, :cond_12

    .line 277
    sget-object v27, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_8

    .line 281
    .end local v19           #reportInt:I
    :catch_0
    move-exception v27

    move-object/from16 v15, v27

    .line 282
    .local v15, nfe:Ljava/lang/NumberFormatException;
    sget-object v27, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    const-string v28, "Value for delivery report was invalid."

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    sget-object v27, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    goto/16 :goto_8

    .line 279
    .end local v15           #nfe:Ljava/lang/NumberFormatException;
    .restart local v19       #reportInt:I
    :cond_12
    :try_start_2
    sget-object v27, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_8

    .line 294
    .end local v19           #reportInt:I
    :cond_13
    :try_start_3
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 295
    .restart local v19       #reportInt:I
    const/16 v27, 0x80

    move/from16 v0, v19

    move/from16 v1, v27

    if-ne v0, v1, :cond_14

    const/16 v27, 0x1

    :goto_b
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mReadReport:Z
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_9

    .line 296
    .end local v19           #reportInt:I
    :catch_1
    move-exception v27

    move-object/from16 v15, v27

    .line 297
    .restart local v15       #nfe:Ljava/lang/NumberFormatException;
    sget-object v27, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    const-string v28, "Value for read report was invalid."

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    goto/16 :goto_9

    .line 295
    .end local v15           #nfe:Ljava/lang/NumberFormatException;
    .restart local v19       #reportInt:I
    :cond_14
    const/16 v27, 0x0

    goto :goto_b

    .line 309
    .end local v19           #reportInt:I
    .restart local v21       #slide:Lcom/android/mms/model/SlideModel;
    .restart local v25       #tm:Lcom/android/mms/model/TextModel;
    :cond_15
    :try_start_4
    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_a

    .line 317
    .end local v21           #slide:Lcom/android/mms/model/SlideModel;
    .end local v25           #tm:Lcom/android/mms/model/TextModel;
    :catch_2
    move-exception v27

    move-object/from16 v10, v27

    .line 318
    .local v10, e:Ljava/lang/IndexOutOfBoundsException;
    sget-object v27, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    const-string v28, "MMS has zero slides"

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 335
    .end local v10           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v17           #p:Lcom/google/android/mms/pdu/PduPersister;
    .end local v18           #report:Ljava/lang/String;
    .end local v24           #subject:Ljava/lang/String;
    :cond_16
    const-string v27, "wpm"

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1a

    .line 336
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    .line 338
    sget-object v27, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    .line 340
    sget-object v27, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-wide/from16 v28, v0

    invoke-static/range {v27 .. v29}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    .line 343
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    .line 344
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsAddress:I

    move/from16 v27, v0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    .line 345
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsRead:I

    move/from16 v27, v0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mSMSRead:I

    .line 347
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsBody:I

    move/from16 v27, v0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 356
    .local v4, body:Ljava/lang/String;
    :try_start_5
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnWpmSiExpires:I

    move/from16 v27, v0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-wide v11

    .line 362
    .local v11, expiredTime:J
    :goto_c
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 363
    .local v5, calnow:Ljava/util/Calendar;
    const/16 v27, 0xe

    const/16 v28, 0x0

    move-object v0, v5

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 364
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 366
    .local v6, currentTime:J
    const-wide/16 v27, 0x0

    cmp-long v27, v11, v27

    if-lez v27, :cond_17

    cmp-long v27, v6, v11

    if-ltz v27, :cond_17

    .line 367
    const-string v27, "Message Expired"

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 385
    :goto_d
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDate:I

    move/from16 v27, v0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mTime:J

    .line 386
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsLocked:I

    move/from16 v27, v0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    if-eqz v27, :cond_19

    const/16 v27, 0x1

    :goto_e
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    .line 392
    const v27, 0x7f090015

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mTime:J

    move-wide/from16 v30, v0

    const/16 v32, 0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v30

    move/from16 v3, v32

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, p1

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    goto/16 :goto_3

    .line 357
    .end local v5           #calnow:Ljava/util/Calendar;
    .end local v6           #currentTime:J
    .end local v11           #expiredTime:J
    :catch_3
    move-exception v27

    move-object/from16 v15, v27

    .line 358
    .restart local v15       #nfe:Ljava/lang/NumberFormatException;
    const-wide/16 v11, 0x0

    .line 359
    .restart local v11       #expiredTime:J
    sget-object v27, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    const-string v28, "only SI message has Expires Value not SL :  expiredTime set 0 "

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 369
    .end local v15           #nfe:Ljava/lang/NumberFormatException;
    .restart local v5       #calnow:Ljava/util/Calendar;
    .restart local v6       #currentTime:J
    :cond_17
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_18

    .line 370
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnWpmHref:I

    move/from16 v27, v0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    goto/16 :goto_d

    .line 373
    :cond_18
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsBody:I

    move/from16 v28, v0

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnWpmHref:I

    move/from16 v28, v0

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    goto/16 :goto_d

    .line 386
    :cond_19
    const/16 v27, 0x0

    goto/16 :goto_e

    .line 397
    .end local v4           #body:Ljava/lang/String;
    .end local v5           #calnow:Ljava/util/Calendar;
    .end local v6           #currentTime:J
    .end local v11           #expiredTime:J
    :cond_1a
    new-instance v27, Lcom/google/android/mms/MmsException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Unknown type of the message: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v27
.end method

.method private interpretFrom(Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V
    .locals 2
    .parameter "from"
    .parameter "messageUri"

    .prologue
    .line 402
    if-eqz p1, :cond_0

    .line 403
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    .line 411
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    .line 412
    return-void

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    goto :goto_0

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public getBoxId()I
    .locals 1

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mGroupType:I

    .line 554
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    goto :goto_0
.end method

.method public getCachedFormattedMessage()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v0

    .line 541
    .local v0, isSending:Z
    iget-boolean v1, p0, Lcom/android/mms/ui/MessageItem;->mLastSendingState:Z

    if-eq v0, v1, :cond_0

    .line 542
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageItem;->mLastSendingState:Z

    .line 543
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/MessageItem;->mCachedFormattedMessage:Ljava/lang/CharSequence;

    .line 546
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mCachedFormattedMessage:Ljava/lang/CharSequence;

    return-object v1
.end method

.method public getMsgId()J
    .locals 2

    .prologue
    .line 572
    iget-wide v0, p0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    return-wide v0
.end method

.method public getThreadId()J
    .locals 2

    .prologue
    .line 576
    iget-wide v0, p0, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    return-wide v0
.end method

.method public isDownloaded()Z
    .locals 2

    .prologue
    .line 438
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    const/16 v1, 0x82

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFailedMessage()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 467
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v4

    .line 472
    :goto_0
    return v2

    .line 470
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/mms/ui/MessageItem;->mErrorType:I

    const/16 v3, 0xa

    if-lt v2, v3, :cond_2

    move v0, v5

    .line 471
    .local v0, isFailedMms:Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    move v1, v5

    .line 472
    .local v1, isFailedSms:Z
    :goto_2
    if-nez v0, :cond_1

    if-eqz v1, :cond_4

    :cond_1
    move v2, v5

    goto :goto_0

    .end local v0           #isFailedMms:Z
    .end local v1           #isFailedSms:Z
    :cond_2
    move v0, v4

    .line 470
    goto :goto_1

    .restart local v0       #isFailedMms:Z
    :cond_3
    move v1, v4

    .line 471
    goto :goto_2

    .restart local v1       #isFailedSms:Z
    :cond_4
    move v2, v4

    .line 472
    goto :goto_0
.end method

.method public isGroupSms()Z
    .locals 4

    .prologue
    .line 581
    iget-wide v0, p0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    iget-wide v2, p0, Lcom/android/mms/ui/MessageItem;->mGroupId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInboxMessage()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 450
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v0

    .line 451
    .local v0, boxId:I
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v3

    if-eqz v3, :cond_1

    if-ne v0, v4, :cond_1

    move v1, v4

    .line 452
    .local v1, isInboxMms:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v3

    if-eqz v3, :cond_2

    if-ne v0, v4, :cond_2

    move v2, v4

    .line 453
    .local v2, isInboxSms:Z
    :goto_1
    if-nez v1, :cond_0

    if-eqz v2, :cond_3

    :cond_0
    move v3, v4

    :goto_2
    return v3

    .end local v1           #isInboxMms:Z
    .end local v2           #isInboxSms:Z
    :cond_1
    move v1, v5

    .line 451
    goto :goto_0

    .restart local v1       #isInboxMms:Z
    :cond_2
    move v2, v5

    .line 452
    goto :goto_1

    .restart local v2       #isInboxSms:Z
    :cond_3
    move v3, v5

    .line 453
    goto :goto_2
.end method

.method public isMms()Z
    .locals 2

    .prologue
    .line 423
    const-string v0, "mms"

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOutgoingMessage()Z
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 442
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v0

    .line 443
    .local v0, boxId:I
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v3

    if-eqz v3, :cond_2

    if-ne v0, v6, :cond_2

    move v1, v5

    .line 444
    .local v1, isOutgoingMms:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    if-eq v0, v6, :cond_0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_3

    :cond_0
    move v2, v5

    .line 446
    .local v2, isOutgoingSms:Z
    :goto_1
    if-nez v1, :cond_1

    if-eqz v2, :cond_4

    :cond_1
    move v3, v5

    :goto_2
    return v3

    .end local v1           #isOutgoingMms:Z
    .end local v2           #isOutgoingSms:Z
    :cond_2
    move v1, v4

    .line 443
    goto :goto_0

    .restart local v1       #isOutgoingMms:Z
    :cond_3
    move v2, v4

    .line 444
    goto :goto_1

    .restart local v2       #isOutgoingSms:Z
    :cond_4
    move v3, v4

    .line 446
    goto :goto_2
.end method

.method public isSending()Z
    .locals 1

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSms()Z
    .locals 2

    .prologue
    .line 427
    const-string v0, "sms"

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isWpm()Z
    .locals 2

    .prologue
    .line 432
    const-string v0, "wpm"

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setCachedFormattedMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "formattedMessage"

    .prologue
    .line 536
    iput-object p1, p0, Lcom/android/mms/ui/MessageItem;->mCachedFormattedMessage:Ljava/lang/CharSequence;

    .line 537
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 561
    invoke-static {}, Lcom/android/mms/Log;->isPrintSecured()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " box: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " contact: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " read: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " delivery status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 566
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "MessageItem"

    goto :goto_0
.end method

.method public updateFailedFlag()V
    .locals 14

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 476
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 477
    sget-object v0, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v13

    .line 478
    .local v13, uriBuilder:Landroid/net/Uri$Builder;
    const-string v0, "protocol"

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v13, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 479
    const-string v0, "message"

    iget-wide v1, p0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 481
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 484
    .local v11, failedCursor:Landroid/database/Cursor;
    if-eqz v11, :cond_1

    .line 486
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    const-string v0, "err_type"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MessageItem;->mErrorType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 510
    .end local v11           #failedCursor:Landroid/database/Cursor;
    .end local v13           #uriBuilder:Landroid/net/Uri$Builder;
    :cond_1
    :goto_0
    return-void

    .line 491
    .restart local v11       #failedCursor:Landroid/database/Cursor;
    .restart local v13       #uriBuilder:Landroid/net/Uri$Builder;
    :catchall_0
    move-exception v0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0

    .line 495
    .end local v11           #failedCursor:Landroid/database/Cursor;
    .end local v13           #uriBuilder:Landroid/net/Uri$Builder;
    :cond_2
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 496
    .local v6, messageUri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/String;

    const-string v0, "type"

    aput-object v0, v7, v8

    move-object v8, v3

    move-object v9, v3

    move-object v10, v3

    invoke-static/range {v4 .. v10}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 500
    .local v12, smsCursor:Landroid/database/Cursor;
    if-eqz v12, :cond_1

    .line 502
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 503
    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 506
    :cond_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public updatePendingStatus()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 513
    const/4 v6, 0x0

    .line 515
    .local v6, nullStirng:Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x4

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 516
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "err_type"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 517
    const-string v0, "retry_index"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 518
    const-string v0, "due_time"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 519
    const-string v0, "last_try"

    invoke-virtual {v3, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v7, p0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 528
    return-void
.end method

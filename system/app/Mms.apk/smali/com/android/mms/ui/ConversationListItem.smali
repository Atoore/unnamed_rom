.class public Lcom/android/mms/ui/ConversationListItem;
.super Landroid/widget/LinearLayout;
.source "ConversationListItem.java"

# interfaces
.implements Lcom/android/mms/data/Contact$UpdateListener;


# static fields
.field public static LIST_FROM_TEXT_SIZE_HUGE:F

.field public static LIST_FROM_TEXT_SIZE_LARGE:F

.field public static LIST_FROM_TEXT_SIZE_NORMAL:F

.field public static LIST_FROM_TEXT_SIZE_SMALL:F

.field public static LIST_FROM_TEXT_SIZE_TINY:F

.field private static LIST_HEIGHT_HUGE:I

.field private static LIST_HEIGHT_LARGE:I

.field private static LIST_HEIGHT_NORMAL:I

.field private static LIST_HEIGHT_SMALL:I

.field private static LIST_HEIGHT_TINY:I

.field private static LIST_SUBJECT_TEXT_SIZE_HUGE:F

.field private static LIST_SUBJECT_TEXT_SIZE_LARGE:F

.field private static LIST_SUBJECT_TEXT_SIZE_NORMAL:F

.field private static LIST_SUBJECT_TEXT_SIZE_SMALL:F

.field private static LIST_SUBJECT_TEXT_SIZE_TINY:F

.field private static mDefaultContactImage:Landroid/graphics/drawable/Drawable;


# instance fields
.field private mAvatarView:Landroid/widget/QuickContactBadge;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private mConversationListItemData:Lcom/android/mms/ui/ConversationListItemData;

.field private mDateView:Landroid/widget/TextView;

.field private mFromView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mIsDeleteMode:Z

.field private mListItemLayout:Landroid/widget/RelativeLayout;

.field private mMsgPointer:Landroid/widget/ImageView;

.field private mPresenceView:Landroid/widget/ImageView;

.field private mSubjectView:Landroid/widget/TextView;

.field private mUnreadCount:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/high16 v3, 0x4190

    const/high16 v2, 0x4180

    const/16 v1, 0x40

    .line 72
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/ConversationListItem;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    .line 83
    sput v2, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_TINY:F

    .line 84
    const v0, 0x419547ae

    sput v0, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_SMALL:F

    .line 85
    const v0, 0x41a547ae

    sput v0, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_NORMAL:F

    .line 86
    const v0, 0x41b547ae

    sput v0, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_LARGE:F

    .line 87
    const v0, 0x41cd47ae

    sput v0, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_HUGE:F

    .line 89
    const/high16 v0, 0x4140

    sput v0, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_TINY:F

    .line 90
    const/high16 v0, 0x4160

    sput v0, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_SMALL:F

    .line 91
    sput v2, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_NORMAL:F

    .line 92
    sput v3, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_LARGE:F

    .line 93
    sput v3, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_HUGE:F

    .line 95
    const/16 v0, 0x2c

    sput v0, Lcom/android/mms/ui/ConversationListItem;->LIST_HEIGHT_TINY:I

    .line 96
    const/16 v0, 0x32

    sput v0, Lcom/android/mms/ui/ConversationListItem;->LIST_HEIGHT_SMALL:I

    .line 97
    sput v1, Lcom/android/mms/ui/ConversationListItem;->LIST_HEIGHT_NORMAL:I

    .line 98
    sput v1, Lcom/android/mms/ui/ConversationListItem;->LIST_HEIGHT_LARGE:I

    .line 99
    sput v1, Lcom/android/mms/ui/ConversationListItem;->LIST_HEIGHT_HUGE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListItem;->mIsDeleteMode:Z

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mHandler:Landroid/os/Handler;

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListItem;->mIsDeleteMode:Z

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mHandler:Landroid/os/Handler;

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    .line 110
    sget-object v0, Lcom/android/mms/ui/ConversationListItem;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/ConversationListItem;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    .line 113
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ConversationListItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->updateFromView()V

    return-void
.end method

.method private formatMessage(Lcom/android/mms/ui/ConversationListItemData;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "ch"

    .prologue
    .line 180
    invoke-virtual {p1}, Lcom/android/mms/ui/ConversationListItemData;->getFrom()Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, from:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/mms/ui/ConversationListItemData;->getContacts()Lcom/android/mms/data/ContactList;

    move-result-object v3

    .line 182
    .local v3, recipients:Lcom/android/mms/data/ContactList;
    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 183
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/data/Contact;

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, recipient:Ljava/lang/String;
    const-string v4, "CBmessages"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 186
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090123

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 194
    .end local v2           #recipient:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 195
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 197
    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 210
    .local v0, buf:Landroid/text/SpannableStringBuilder;
    return-object v0

    .line 188
    .end local v0           #buf:Landroid/text/SpannableStringBuilder;
    .restart local v2       #recipient:Ljava/lang/String;
    :cond_2
    const-string v4, "Push message"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 189
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09019f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private setConversationListItemData(Lcom/android/mms/ui/ConversationListItemData;)V
    .locals 0
    .parameter "header"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListItem;->mConversationListItemData:Lcom/android/mms/ui/ConversationListItemData;

    .line 162
    return-void
.end method

.method private updateAvatarView()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 214
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mConversationListItemData:Lcom/android/mms/ui/ConversationListItemData;

    .line 218
    .local v1, ch:Lcom/android/mms/ui/ConversationListItemData;
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v5}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 220
    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListItemData;->getContacts()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-ne v3, v6, :cond_7

    .line 221
    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListItemData;->getContacts()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    .line 222
    .local v2, contact:Lcom/android/mms/data/Contact;
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/mms/ui/ConversationListItem;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 224
    .local v0, avatarDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->isOnlineLocker()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->isOnlineAlbum()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 225
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v5}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 258
    .end local v2           #contact:Lcom/android/mms/data/Contact;
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v0}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 259
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v7}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 260
    return-void

    .line 227
    .restart local v2       #contact:Lcom/android/mms/data/Contact;
    :cond_1
    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CBmessages"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 228
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v5}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 229
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200e6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 231
    :cond_2
    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Push message"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 232
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v5}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 233
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200f0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 236
    :cond_3
    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 237
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 240
    :cond_4
    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 241
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto :goto_0

    .line 244
    :cond_5
    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->isPhoneNumber()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 245
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto :goto_0

    .line 247
    :cond_6
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v5}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 254
    .end local v0           #avatarDrawable:Landroid/graphics/drawable/Drawable;
    .end local v2           #contact:Lcom/android/mms/data/Contact;
    :cond_7
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200e7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #avatarDrawable:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0
.end method

.method private updateFromView()V
    .locals 3

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversationListItemData:Lcom/android/mms/ui/ConversationListItemData;

    .line 264
    .local v0, ch:Lcom/android/mms/ui/ConversationListItemData;
    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListItemData;->updateRecipients()V

    .line 265
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->formatMessage(Lcom/android/mms/ui/ConversationListItemData;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListItemData;->getContacts()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->getPresenceResId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationListItem;->setPresenceIcon(I)V

    .line 267
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->updateAvatarView()V

    .line 268
    return-void
.end method


# virtual methods
.method public bind(Landroid/content/Context;Lcom/android/mms/ui/ConversationListItemData;Landroid/database/Cursor;)V
    .locals 6
    .parameter "context"
    .parameter "ch"
    .parameter "cursor"

    .prologue
    const/4 v5, 0x0

    .line 348
    invoke-direct {p0, p2}, Lcom/android/mms/ui/ConversationListItem;->setConversationListItemData(Lcom/android/mms/ui/ConversationListItemData;)V

    .line 351
    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationListItemData;->getUnreadMessageCount()I

    move-result v1

    .line 352
    .local v1, unreadCount:I
    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationListItem;->mIsDeleteMode:Z

    if-nez v2, :cond_0

    if-lez v1, :cond_0

    .line 353
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 354
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    :goto_0
    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationListItemData;->hasDraft()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 362
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 364
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    const v3, 0x7f09000e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 376
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/android/mms/ui/ConversationListItem;->formatMessage(Lcom/android/mms/ui/ConversationListItemData;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationListItem;->mIsDeleteMode:Z

    if-eqz v2, :cond_3

    .line 378
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationListItemData;->getSmsMmsCount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    :goto_2
    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationListItemData;->getContacts()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 386
    .local v0, contacts:Lcom/android/mms/data/ContactList;
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 387
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->getPresenceResId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationListItem;->setPresenceIcon(I)V

    .line 390
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListItem;->changeFontSize()V

    .line 393
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->updateAvatarView()V

    .line 396
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/ConversationListItem;->setLongClickable(Z)V

    .line 397
    return-void

    .line 356
    .end local v0           #contacts:Lcom/android/mms/data/ContactList;
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 365
    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationListItemData;->hasError()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 367
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 369
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    const v3, 0x7f09016e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 371
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020018

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 373
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationListItemData;->getDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 380
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationListItemData;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public changeFontSize()V
    .locals 10

    .prologue
    const/16 v9, 0x9

    const/4 v8, 0x7

    const/4 v6, -0x4

    const/4 v7, 0x0

    .line 285
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->density:F

    .line 287
    .local v2, mDensityScale:F
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mListItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 288
    .local v3, params:Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 291
    .local v1, fromLP:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, -0xa

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 292
    const/4 v0, 0x0

    .line 293
    .local v0, fontSize:I
    iget-boolean v4, p0, Lcom/android/mms/ui/ConversationListItem;->mIsDeleteMode:Z

    if-nez v4, :cond_0

    .line 294
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMessageFontSize(Landroid/content/Context;)I

    move-result v0

    .line 296
    :cond_0
    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    .line 297
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mListItemLayout:Landroid/widget/RelativeLayout;

    const/16 v5, 0xa

    invoke-virtual {v4, v7, v5, v7, v7}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 298
    sget v4, Lcom/android/mms/ui/ConversationListItem;->LIST_HEIGHT_TINY:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 300
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_TINY:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 301
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_TINY:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 302
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_TINY:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 304
    const/4 v4, -0x2

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 343
    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mListItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    return-void

    .line 305
    :cond_1
    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 306
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mListItemLayout:Landroid/widget/RelativeLayout;

    const/4 v5, 0x5

    invoke-virtual {v4, v7, v9, v7, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 307
    sget v4, Lcom/android/mms/ui/ConversationListItem;->LIST_HEIGHT_SMALL:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 309
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_SMALL:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 310
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_SMALL:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 311
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_SMALL:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 313
    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 314
    :cond_2
    const/4 v4, 0x4

    if-ne v0, v4, :cond_3

    .line 315
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mListItemLayout:Landroid/widget/RelativeLayout;

    const/16 v5, 0xb

    invoke-virtual {v4, v7, v5, v7, v8}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 316
    sget v4, Lcom/android/mms/ui/ConversationListItem;->LIST_HEIGHT_LARGE:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 318
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_LARGE:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 319
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_LARGE:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 320
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_LARGE:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 322
    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 323
    :cond_3
    const/4 v4, 0x3

    if-ne v0, v4, :cond_4

    .line 324
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mListItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v7, v9, v7, v8}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 325
    sget v4, Lcom/android/mms/ui/ConversationListItem;->LIST_HEIGHT_HUGE:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 327
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_HUGE:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 328
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_HUGE:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 329
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_HUGE:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 331
    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_0

    .line 333
    :cond_4
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mListItemLayout:Landroid/widget/RelativeLayout;

    const/16 v5, 0xf

    const/16 v6, 0x10

    invoke-virtual {v4, v7, v5, v7, v6}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 334
    sget v4, Lcom/android/mms/ui/ConversationListItem;->LIST_HEIGHT_NORMAL:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 336
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_NORMAL:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 337
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_NORMAL:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 338
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_NORMAL:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 340
    const/4 v4, -0x5

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 117
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 119
    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f080019

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    .line 121
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 122
    const v0, 0x7f080036

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    .line 124
    const v0, 0x7f080034

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mPresenceView:Landroid/widget/ImageView;

    .line 125
    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    .line 126
    const v0, 0x7f080038

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 129
    const v0, 0x7f080033

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    .line 132
    const v0, 0x7f080032

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mListItemLayout:Landroid/widget/RelativeLayout;

    .line 134
    const v0, 0x7f080037

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgPointer:Landroid/widget/ImageView;

    .line 135
    return-void
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 2
    .parameter "updated"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversationListItemData:Lcom/android/mms/ui/ConversationListItemData;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListItemData;->getContacts()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/data/ContactList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/ConversationListItem$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationListItem$1;-><init>(Lcom/android/mms/ui/ConversationListItem;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasWindowFocus"

    .prologue
    .line 424
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 426
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversationListItemData:Lcom/android/mms/ui/ConversationListItemData;

    if-nez v0, :cond_0

    .line 434
    :goto_0
    return-void

    .line 429
    :cond_0
    if-eqz p1, :cond_1

    .line 430
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    goto :goto_0

    .line 432
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListItem;->unbind()V

    goto :goto_0
.end method

.method public setCheckBox(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 405
    return-void
.end method

.method public setDeleteMode(Z)V
    .locals 3
    .parameter "isDeleteMode"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 408
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListItem;->mIsDeleteMode:Z

    .line 409
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListItem;->mIsDeleteMode:Z

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgPointer:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    .line 419
    :goto_0
    return-void

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 416
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 417
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    goto :goto_0
.end method

.method public setMessagePointer(Z)V
    .locals 2
    .parameter "focus"

    .prologue
    .line 148
    if-eqz p1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgPointer:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgPointer:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPresenceIcon(I)V
    .locals 2
    .parameter "iconId"

    .prologue
    .line 138
    if-nez p1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mPresenceView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mPresenceView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 142
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mPresenceView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final unbind()V
    .locals 0

    .prologue
    .line 400
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 401
    return-void
.end method

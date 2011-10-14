.class public Lcom/android/mms/data/Contact;
.super Ljava/lang/Object;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/data/Contact$ContactsCache;,
        Lcom/android/mms/data/Contact$UpdateListener;
    }
.end annotation


# static fields
.field private static ONLINE_LOCKER:Ljava/lang/String;

.field public static isInvalid:Z

.field private static final mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/mms/data/Contact$UpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private static sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

.field private static final sContactsObserver:Landroid/database/ContentObserver;


# instance fields
.field private mAvatarData:[B

.field private mIsStale:Z

.field private mLabel:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNameAndNumber:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field private mNumberIsModified:Z

.field private mOnlineLocker:Z

.field private mPersonId:J

.field private mPresenceResId:I

.field private mPresenceText:Ljava/lang/String;

.field private mQueryPending:Z

.field private mRecipientId:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    const-string v0, "700"

    sput-object v0, Lcom/android/mms/data/Contact;->ONLINE_LOCKER:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/data/Contact;->isInvalid:Z

    .line 68
    new-instance v0, Lcom/android/mms/data/Contact$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/mms/data/Contact$1;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/android/mms/data/Contact;->sContactsObserver:Landroid/database/ContentObserver;

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Long;)V
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    const-string v1, ""

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    const-string v0, ""

    iput-object v1, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    .line 144
    const-string v0, ""

    iput-object v1, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    .line 145
    const-string v0, ""

    iput-object v1, p0, Lcom/android/mms/data/Contact;->mNameAndNumber:Ljava/lang/String;

    .line 146
    iput-boolean v2, p0, Lcom/android/mms/data/Contact;->mNumberIsModified:Z

    .line 147
    const-string v0, ""

    iput-object v1, p0, Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/data/Contact;->mPersonId:J

    .line 149
    iput v2, p0, Lcom/android/mms/data/Contact;->mPresenceResId:I

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/data/Contact;->mIsStale:Z

    .line 151
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Long;Lcom/android/mms/data/Contact$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/Long;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "number"

    .prologue
    const/4 v2, 0x0

    const-string v1, ""

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const-string v0, ""

    iput-object v1, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/mms/data/Contact;->setNumber(Ljava/lang/String;)V

    .line 132
    iput-boolean v2, p0, Lcom/android/mms/data/Contact;->mNumberIsModified:Z

    .line 133
    const-string v0, ""

    iput-object v1, p0, Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;

    .line 134
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/data/Contact;->mPersonId:J

    .line 135
    iput v2, p0, Lcom/android/mms/data/Contact;->mPresenceResId:I

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/data/Contact;->mIsStale:Z

    .line 137
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "number"
    .parameter "name"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p2, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    .line 155
    iput-object p1, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    .line 156
    iput-object p2, p0, Lcom/android/mms/data/Contact;->mNameAndNumber:Ljava/lang/String;

    .line 157
    iput-boolean v2, p0, Lcom/android/mms/data/Contact;->mNumberIsModified:Z

    .line 158
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;

    .line 159
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/data/Contact;->mPersonId:J

    .line 160
    iput v2, p0, Lcom/android/mms/data/Contact;->mPresenceResId:I

    .line 161
    iput-boolean v3, p0, Lcom/android/mms/data/Contact;->mIsStale:Z

    .line 163
    iput-boolean v3, p0, Lcom/android/mms/data/Contact;->mOnlineLocker:Z

    .line 167
    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/data/Contact;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/mms/data/Contact;->mQueryPending:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/mms/data/Contact;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/mms/data/Contact;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/mms/data/Contact;->mQueryPending:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/mms/data/Contact;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mPresenceText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/mms/data/Contact;->mPresenceText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/mms/data/Contact;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/mms/data/Contact;->notSynchronizedUpdateNameAndNumber()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/data/Contact;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/mms/data/Contact;->mOnlineLocker:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/mms/data/Contact;->mNameAndNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/data/Contact;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/mms/data/Contact;->mIsStale:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/mms/data/Contact;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/mms/data/Contact;->mIsStale:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/mms/data/Contact;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-static {p0}, Lcom/android/mms/data/Contact;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/data/Contact;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/mms/data/Contact;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/android/mms/data/Contact;->mPersonId:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/android/mms/data/Contact;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/android/mms/data/Contact;->mPersonId:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/android/mms/data/Contact;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/mms/data/Contact;->mPresenceResId:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/mms/data/Contact;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/mms/data/Contact;->mPresenceResId:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/mms/data/Contact;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mAvatarData:[B

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/mms/data/Contact;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/mms/data/Contact;->mAvatarData:[B

    return-object p1
.end method

.method public static addListener(Lcom/android/mms/data/Contact$UpdateListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 403
    sget-object v0, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    monitor-enter v0

    .line 404
    :try_start_0
    sget-object v1, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 405
    monitor-exit v0

    .line 406
    return-void

    .line 405
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 267
    if-eqz p0, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static formatNameAndNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "name"
    .parameter "number"

    .prologue
    .line 290
    move-object v0, p1

    .line 291
    .local v0, formattedNumber:Ljava/lang/String;
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 292
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 296
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 297
    .local v1, s:Ljava/lang/StringBuffer;
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 301
    .end local v1           #s:Ljava/lang/StringBuffer;
    :cond_1
    return-object v0
.end method

.method public static get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;
    .locals 4
    .parameter "number"
    .parameter "canBlock"

    .prologue
    .line 182
    const/4 v0, 0x0

    .line 184
    .local v0, contact:Lcom/android/mms/data/Contact;
    sget-object v2, Lcom/android/mms/data/Contact;->ONLINE_LOCKER:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/MmsApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090229

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, onlineLocker:Ljava/lang/String;
    new-instance v0, Lcom/android/mms/data/Contact;

    .end local v0           #contact:Lcom/android/mms/data/Contact;
    invoke-direct {v0, p0, v1}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .restart local v0       #contact:Lcom/android/mms/data/Contact;
    invoke-static {v0}, Lcom/android/mms/data/RecipientIdCache;->updateNumber(Lcom/android/mms/data/Contact;)V

    .line 191
    .end local v1           #onlineLocker:Ljava/lang/String;
    :cond_0
    if-nez v0, :cond_1

    .line 192
    sget-object v2, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    invoke-virtual {v2, p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 194
    :cond_1
    return-object v0
.end method

.method public static get(Ljava/util/ArrayList;Z)Lcom/android/mms/data/ContactList;
    .locals 5
    .parameter
    .parameter "canBlock"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/android/mms/data/ContactList;"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, selectedContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 200
    const/4 v4, 0x0

    .line 209
    :goto_0
    return-object v4

    .line 202
    :cond_0
    new-instance v0, Lcom/android/mms/data/ContactList;

    invoke-direct {v0}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 205
    .local v0, contacts:Lcom/android/mms/data/ContactList;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 206
    .local v2, idAndNumber:Ljava/lang/String;
    const/16 v4, 0x3b

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, number:Ljava/lang/String;
    sget-object v4, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    invoke-virtual {v4, v3, p1}, Lcom/android/mms/data/Contact$ContactsCache;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v2           #idAndNumber:Ljava/lang/String;
    .end local v3           #number:Ljava/lang/String;
    :cond_1
    move-object v4, v0

    .line 209
    goto :goto_0
.end method

.method public static getByIds(Ljava/util/ArrayList;Z)Lcom/android/mms/data/ContactList;
    .locals 11
    .parameter
    .parameter "canBlock"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/android/mms/data/ContactList;"
        }
    .end annotation

    .prologue
    .local p0, selectedContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v10, 0x3b

    .line 213
    if-nez p0, :cond_0

    .line 214
    const/4 v5, 0x0

    .line 244
    :goto_0
    return-object v5

    .line 216
    :cond_0
    new-instance v0, Lcom/android/mms/data/ContactList;

    invoke-direct {v0}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 220
    .local v0, contacts:Lcom/android/mms/data/ContactList;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 221
    .local v3, idAndNumber:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v3, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, id:Ljava/lang/String;
    invoke-virtual {v3, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, number:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "5583"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 227
    sget-object v5, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfo(J)Lcom/android/mms/data/Contact;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 228
    const-string v5, "Mms/Contact"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " GetByIds number "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfo(J)Lcom/android/mms/data/Contact;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    sget-object v5, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    invoke-virtual {v5, v4}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfo(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 231
    :cond_2
    sget-object v5, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfo(J)Lcom/android/mms/data/Contact;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 237
    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 241
    sget-object v5, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    invoke-virtual {v5, v4, p1}, Lcom/android/mms/data/Contact$ContactsCache;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .end local v2           #id:Ljava/lang/String;
    .end local v3           #idAndNumber:Ljava/lang/String;
    .end local v4           #number:Ljava/lang/String;
    :cond_4
    move-object v5, v0

    .line 244
    goto/16 :goto_0
.end method

.method public static getContactName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "number"

    .prologue
    .line 306
    sget-object v1, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/android/mms/data/Contact$ContactsCache;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, name:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    move-object v0, p0

    .line 311
    :cond_0
    return-object v0
.end method

.method public static getTemp()Lcom/android/mms/data/Contact;
    .locals 2

    .prologue
    .line 1208
    new-instance v0, Lcom/android/mms/data/Contact;

    invoke-static {}, Lcom/android/mms/data/Conversation;->getTempThreadIdStr()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 466
    const-string v0, "Mms/Contact"

    const-string v1, "init()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    invoke-static {p0}, Lcom/android/mms/data/Contact$ContactsCache;->getInstance(Landroid/content/Context;)Lcom/android/mms/data/Contact$ContactsCache;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    .line 470
    invoke-static {p0}, Lcom/android/mms/data/RecipientIdCache;->init(Landroid/content/Context;)V

    .line 478
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    sget-object v3, Lcom/android/mms/data/Contact;->sContactsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 481
    return-void
.end method

.method public static invalidateCache()V
    .locals 3

    .prologue
    .line 248
    const-string v0, "Mms/Contact"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalidateCache(),isInvalid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/mms/data/Contact;->isInvalid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    sget-boolean v0, Lcom/android/mms/data/Contact;->isInvalid:Z

    if-nez v0, :cond_0

    .line 264
    :goto_0
    return-void

    .line 260
    :cond_0
    sget-object v0, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact$ContactsCache;->invalidate()V

    .line 261
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/data/Contact;->isInvalid:Z

    goto :goto_0
.end method

.method private notSynchronizedUpdateNameAndNumber()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/mms/data/Contact;->formatNameAndNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mNameAndNumber:Ljava/lang/String;

    .line 372
    return-void
.end method

.method public static removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 409
    sget-object v0, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    monitor-enter v0

    .line 410
    :try_start_0
    sget-object v1, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 411
    monitor-exit v0

    .line 412
    return-void

    .line 411
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static replaceInvalidPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "recipient"

    .prologue
    .line 271
    move-object v0, p0

    .line 272
    .local v0, replaced:Ljava/lang/String;
    const-string v1, "+00"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 274
    const-string v1, "Mms/Contact"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "replaced from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :cond_0
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 278
    :cond_1
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    :cond_2
    return-object v0
.end method


# virtual methods
.method public declared-synchronized existsInDatabase()Z
    .locals 4

    .prologue
    .line 399
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/data/Contact;->mPersonId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "context"
    .parameter "defaultValue"

    .prologue
    .line 456
    monitor-enter p0

    const/4 v0, 0x0

    .line 457
    .local v0, avatar:Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/data/Contact;->mAvatarData:[B

    if-eqz v2, :cond_0

    .line 458
    iget-object v2, p0, Lcom/android/mms/data/Contact;->mAvatarData:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/data/Contact;->mAvatarData:[B

    array-length v4, v4

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 459
    .local v1, b:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0           #avatar:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    .end local v1           #b:Landroid/graphics/Bitmap;
    .restart local v0       #avatar:Landroid/graphics/drawable/Drawable;
    :cond_0
    if-eqz v0, :cond_1

    move-object v2, v0

    :goto_0
    monitor-exit p0

    return-object v2

    :cond_1
    move-object v2, p2

    goto :goto_0

    .line 456
    .end local v0           #avatar:Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getFormattedName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 361
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 358
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNameAndNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNameAndNumber:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPresenceResId()I
    .locals 1

    .prologue
    .line 395
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/mms/data/Contact;->mPresenceResId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRecipientId()J
    .locals 2

    .prologue
    .line 375
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/data/Contact;->mRecipientId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 387
    monitor-enter p0

    :try_start_0
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/data/Contact;->mPersonId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasAvatarData()Z
    .locals 1

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mAvatarData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/Contact;->mAvatarData:[B

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isEmail()Z
    .locals 1

    .prologue
    .line 423
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isNumberModified()Z
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/android/mms/data/Contact;->mNumberIsModified:Z

    return v0
.end method

.method public declared-synchronized isOnlineAlbum()Z
    .locals 1

    .prologue
    .line 441
    monitor-enter p0

    const/4 v0, 0x0

    .line 446
    .local v0, ret:Z
    monitor-exit p0

    return v0
.end method

.method public declared-synchronized isOnlineLocker()Z
    .locals 3

    .prologue
    .line 432
    monitor-enter p0

    const/4 v0, 0x0

    .line 434
    .local v0, ret:Z
    :try_start_0
    iget-boolean v1, p0, Lcom/android/mms/data/Contact;->mOnlineLocker:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 435
    const/4 v0, 0x1

    .line 437
    :cond_0
    monitor-exit p0

    return v0

    .line 432
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isPhoneNumber()Z
    .locals 1

    .prologue
    .line 428
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reload()V
    .locals 3

    .prologue
    .line 319
    const-string v0, "Mms/Contact"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reload(),number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/data/Contact;->mIsStale:Z

    .line 322
    sget-object v0, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    iget-object v1, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/Contact$ContactsCache;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    .line 323
    return-void
.end method

.method public setIsNumberModified(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 344
    iput-boolean p1, p0, Lcom/android/mms/data/Contact;->mNumberIsModified:Z

    .line 345
    return-void
.end method

.method public declared-synchronized setNumber(Ljava/lang/String;)V
    .locals 1
    .parameter "number"

    .prologue
    .line 334
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    .line 335
    invoke-direct {p0}, Lcom/android/mms/data/Contact;->notSynchronizedUpdateNameAndNumber()V

    .line 336
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/data/Contact;->mNumberIsModified:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    monitor-exit p0

    return-void

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRecipientId(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 379
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/android/mms/data/Contact;->mRecipientId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    monitor-exit p0

    return-void

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, "null"

    .line 170
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 172
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, "{ number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", nameAndNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/data/Contact;->mNameAndNumber:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/data/Contact;->mNameAndNumber:Ljava/lang/String;

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", label="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", person_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/mms/data/Contact;->mPersonId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", hash="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 172
    :cond_0
    const-string v2, "null"

    move-object v2, v3

    goto :goto_0

    :cond_1
    const-string v2, "null"

    move-object v2, v3

    goto :goto_1

    :cond_2
    const-string v2, "null"

    move-object v2, v3

    goto :goto_2

    :cond_3
    const-string v2, "null"

    move-object v2, v3

    goto :goto_3
.end method

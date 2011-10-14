.class public Lcom/android/mms/data/Contact$ContactsCache;
.super Ljava/lang/Object;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/data/Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactsCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/data/Contact$ContactsCache$TaskStack;
    }
.end annotation


# static fields
.field private static final CALLER_ID_PROJECTION:[Ljava/lang/String;

.field private static final EMAIL_PROJECTION:[Ljava/lang/String;

.field private static final EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

.field private static final PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

.field private static sInstance:Lcom/android/mms/data/Contact$ContactsCache;

.field static sStaticKeyBuffer:Ljava/nio/CharBuffer;


# instance fields
.field private final mContactsHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/data/Contact;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mTaskQueue:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 501
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 503
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v3

    const-string v1, "data3"

    aput-object v1, v0, v4

    const-string v1, "display_name"

    aput-object v1, v0, v5

    const-string v1, "contact_id"

    aput-object v1, v0, v6

    const-string v1, "contact_presence"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    .line 525
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 530
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "data4"

    aput-object v1, v0, v3

    const-string v1, "contact_presence"

    aput-object v1, v0, v4

    const-string v1, "contact_id"

    aput-object v1, v0, v5

    const-string v1, "display_name"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->EMAIL_PROJECTION:[Ljava/lang/String;

    .line 1133
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->sStaticKeyBuffer:Ljava/nio/CharBuffer;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    new-instance v0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    invoke-direct {v0}, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mTaskQueue:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    .line 547
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    .line 552
    iput-object p1, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    .line 553
    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/data/Contact$ContactsCache;Lcom/android/mms/data/Contact;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 487
    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/Contact$ContactsCache;->updateContact(Lcom/android/mms/data/Contact;Z)V

    return-void
.end method

.method private checkContactProviderAvailible()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    const-string v9, "Mms/ContactsCache"

    .line 834
    const/4 v7, 0x0

    .line 837
    .local v7, status:I
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "status"

    aput-object v4, v2, v8

    const-string v4, "data1"

    aput-object v4, v2, v10

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 842
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 843
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 844
    const-string v0, "Mms/ContactsCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkContactQueryAvailible status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 848
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 850
    packed-switch v7, :pswitch_data_0

    .line 859
    const-string v0, "Mms/ContactsCache"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Contact DB busy!!!. checkContactQueryAvailible : status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    .line 863
    :goto_0
    return v0

    .line 848
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 853
    :pswitch_0
    const-string v0, "Mms/ContactsCache"

    const-string v0, "checkContactProviderAvailible : ProviderStatus.STATUS_NORMAL"

    invoke-static {v9, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v10

    .line 863
    goto :goto_0

    .line 850
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private contactChanged(Lcom/android/mms/data/Contact;Lcom/android/mms/data/Contact;)Z
    .locals 13
    .parameter "orig"
    .parameter "newContactData"

    .prologue
    const/4 v10, 0x1

    const-string v12, "name changed"

    const-string v11, "Mms/ContactsCache"

    .line 686
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$400(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/data/Contact;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 687
    .local v4, oldName:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$400(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/data/Contact;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 690
    .local v1, newName:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->isNumberModified()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 691
    const-string v6, "Mms/ContactsCache"

    const-string v6, "org number modified"

    invoke-static {v11, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v10

    .line 732
    :goto_0
    return v6

    .line 695
    :cond_0
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 696
    const-string v6, "Mms/ContactsCache"

    const-string v6, "name changed"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v10

    .line 697
    goto :goto_0

    .line 700
    :cond_1
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$600(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/data/Contact;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 701
    .local v3, oldLabel:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$600(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/data/Contact;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 702
    .local v0, newLabel:Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 703
    const-string v6, "Mms/ContactsCache"

    const-string v6, "label changed"

    invoke-static {v11, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v10

    .line 704
    goto :goto_0

    .line 707
    :cond_2
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$700(Lcom/android/mms/data/Contact;)J

    move-result-wide v6

    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$700(Lcom/android/mms/data/Contact;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    .line 708
    const-string v6, "Mms/ContactsCache"

    const-string v6, "person id changed"

    invoke-static {v11, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v10

    .line 709
    goto :goto_0

    .line 712
    :cond_3
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$800(Lcom/android/mms/data/Contact;)I

    move-result v6

    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$800(Lcom/android/mms/data/Contact;)I

    move-result v7

    if-eq v6, v7, :cond_4

    .line 713
    const-string v6, "Mms/ContactsCache"

    const-string v6, "presence changed"

    invoke-static {v11, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v10

    .line 714
    goto :goto_0

    .line 717
    :cond_4
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)[B

    move-result-object v6

    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)[B

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_5

    .line 718
    const-string v6, "Mms/ContactsCache"

    const-string v6, "avatar changed"

    invoke-static {v11, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v10

    .line 719
    goto :goto_0

    .line 725
    :cond_5
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1000(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/data/Contact;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 726
    .local v5, oldNumber:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1000(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/data/Contact;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 727
    .local v2, newNumber:Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 728
    const-string v6, "Mms/ContactsCache"

    const-string v6, "name changed"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v10

    .line 729
    goto/16 :goto_0

    .line 732
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method private getContactInfoForEmailAddress(Ljava/lang/String;)Lcom/android/mms/data/Contact;
    .locals 13
    .parameter "email"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v12, 0x0

    const-string v2, "Mms/ContactsCache"

    .line 1055
    const-string v0, "Mms/ContactsCache"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getContactInfoForEmailAddress(),email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    new-instance v9, Lcom/android/mms/data/Contact;

    invoke-direct {v9, p1, v6}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V

    .line 1059
    .local v9, entry:Lcom/android/mms/data/Contact;
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/data/Contact$ContactsCache;->EMAIL_PROJECTION:[Ljava/lang/String;

    const-string v4, "UPPER(data1)=UPPER(?) AND mimetype=\'vnd.android.cursor.item/email_v2\'"

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v12

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1064
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 1066
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1067
    const/4 v10, 0x0

    .line 1069
    .local v10, found:Z
    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1070
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/data/Contact$ContactsCache;->getStatusIconResourceId(I)I

    move-result v0

    invoke-static {v9, v0}, Lcom/android/mms/data/Contact;->access$802(Lcom/android/mms/data/Contact;I)I

    .line 1072
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v9, v0, v1}, Lcom/android/mms/data/Contact;->access$702(Lcom/android/mms/data/Contact;J)J

    .line 1074
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1075
    .local v11, name:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1076
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1078
    :cond_1
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1079
    invoke-static {v9, v11}, Lcom/android/mms/data/Contact;->access$402(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1080
    const-string v0, "Mms/ContactsCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getContactInfoForEmailAddress: name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v9}, Lcom/android/mms/data/Contact;->access$400(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", email="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", presence="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v9}, Lcom/android/mms/data/Contact;->access$800(Lcom/android/mms/data/Contact;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    const/4 v10, 0x1

    .line 1084
    :cond_2
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1086
    if-eqz v10, :cond_0

    .line 1087
    :try_start_2
    invoke-direct {p0, v9}, Lcom/android/mms/data/Contact$ContactsCache;->loadAvatarData(Lcom/android/mms/data/Contact;)[B

    move-result-object v8

    .line 1088
    .local v8, data:[B
    monitor-enter v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1089
    :try_start_3
    invoke-static {v9, v8}, Lcom/android/mms/data/Contact;->access$902(Lcom/android/mms/data/Contact;[B)[B

    .line 1090
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1096
    .end local v8           #data:[B
    .end local v10           #found:Z
    .end local v11           #name:Ljava/lang/String;
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1099
    :cond_4
    return-object v9

    .line 1084
    .restart local v10       #found:Z
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1096
    .end local v10           #found:Z
    :catchall_1
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1090
    .restart local v8       #data:[B
    .restart local v10       #found:Z
    .restart local v11       #name:Ljava/lang/String;
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

.method private getContactInfoForPhoneNumber(Ljava/lang/String;)Lcom/android/mms/data/Contact;
    .locals 11
    .parameter "number"

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0x3b

    const/4 v4, 0x1

    const/4 v9, 0x0

    const-string v10, "Mms/ContactsCache"

    .line 901
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 904
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 905
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p1, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 907
    :cond_0
    new-instance v8, Lcom/android/mms/data/Contact;

    invoke-direct {v8, p1, v5}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V

    .line 914
    .local v8, entry:Lcom/android/mms/data/Contact;
    const-string v0, "PHONE_NUMBERS_EQUAL(data1,?) AND mimetype=\'vnd.android.cursor.item/phone_v2\' AND raw_contact_id IN (SELECT raw_contact_id  FROM phone_lookup WHERE normalized_number GLOB(\'+*\'))"

    const-string v1, "+"

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 916
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 922
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 923
    const-string v0, "Mms/ContactsCache"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getContactInfoForPhoneNumber("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") returned NULL cursor!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " contact uri used "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    :goto_0
    return-object v8

    .line 929
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 930
    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 931
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/mms/data/Contact;->access$602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 932
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/mms/data/Contact;->access$402(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 933
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v8, v0, v1}, Lcom/android/mms/data/Contact;->access$702(Lcom/android/mms/data/Contact;J)J

    .line 934
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/data/Contact$ContactsCache;->getStatusIconResourceId(I)I

    move-result v0

    invoke-static {v8, v0}, Lcom/android/mms/data/Contact;->access$802(Lcom/android/mms/data/Contact;I)I

    .line 936
    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/mms/data/Contact;->access$1102(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 937
    const-string v0, "Mms/ContactsCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryContactInfoByNumber: name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8}, Lcom/android/mms/data/Contact;->access$400(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", presence="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8}, Lcom/android/mms/data/Contact;->access$800(Lcom/android/mms/data/Contact;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 941
    :try_start_2
    invoke-direct {p0, v8}, Lcom/android/mms/data/Contact$ContactsCache;->loadAvatarData(Lcom/android/mms/data/Contact;)[B

    move-result-object v7

    .line 943
    .local v7, data:[B
    monitor-enter v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 944
    :try_start_3
    invoke-static {v8, v7}, Lcom/android/mms/data/Contact;->access$902(Lcom/android/mms/data/Contact;[B)[B

    .line 945
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 949
    .end local v7           #data:[B
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 939
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 949
    :catchall_1
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 945
    .restart local v7       #data:[B
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/mms/data/Contact$ContactsCache;
    .locals 1
    .parameter "context"

    .prologue
    .line 556
    sget-object v0, Lcom/android/mms/data/Contact$ContactsCache;->sInstance:Lcom/android/mms/data/Contact$ContactsCache;

    if-nez v0, :cond_0

    .line 557
    new-instance v0, Lcom/android/mms/data/Contact$ContactsCache;

    invoke-direct {v0, p0}, Lcom/android/mms/data/Contact$ContactsCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->sInstance:Lcom/android/mms/data/Contact$ContactsCache;

    .line 560
    :cond_0
    sget-object v0, Lcom/android/mms/data/Contact$ContactsCache;->sInstance:Lcom/android/mms/data/Contact$ContactsCache;

    return-object v0
.end method

.method private getStatusIconResourceId(I)I
    .locals 1
    .parameter "status"

    .prologue
    .line 1044
    if-eqz p1, :cond_0

    .line 1045
    invoke-static {p1}, Landroid/provider/ContactsContract$StatusUpdates;->getPresenceIconResourceId(I)I

    move-result v0

    .line 1048
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private key(Ljava/lang/String;Ljava/nio/CharBuffer;)Ljava/lang/String;
    .locals 4
    .parameter "phoneNumber"
    .parameter "keyBuffer"

    .prologue
    .line 1106
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 1107
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->mark()Ljava/nio/Buffer;

    .line 1109
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1110
    .local v1, position:I
    const/4 v2, 0x0

    .line 1111
    .local v2, resultCount:I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 1112
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1113
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1114
    invoke-virtual {p2, v0}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 1115
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 1120
    .end local v0           #c:C
    :cond_1
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->reset()Ljava/nio/Buffer;

    .line 1121
    if-lez v2, :cond_2

    .line 1122
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1125
    :goto_0
    return-object v3

    :cond_2
    move-object v3, p1

    goto :goto_0
.end method

.method private loadAvatarData(Lcom/android/mms/data/Contact;)[B
    .locals 9
    .parameter "entry"

    .prologue
    .line 1007
    const/4 v2, 0x0

    .line 1010
    .local v2, data:[B
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$700(Lcom/android/mms/data/Contact;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->hasAvatarData()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 1011
    :cond_0
    const/4 v5, 0x0

    .line 1039
    :goto_0
    return-object v5

    .line 1014
    :cond_1
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$700(Lcom/android/mms/data/Contact;)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1016
    .local v1, contactUri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 1019
    .local v0, avatarDataStream:Ljava/io/InputStream;
    if-eqz v0, :cond_2

    .line 1020
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v3

    .line 1021
    .local v3, dataLength:I
    new-array v2, v3, [B

    .line 1022
    const/4 v5, 0x0

    array-length v6, v2

    invoke-virtual {v0, v2, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 1023
    .local v4, readLength:I
    if-le v3, v4, :cond_2

    .line 1024
    const-string v5, "Mms/ContactsCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "avatar stream reading failed,dataLength="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",readLength="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1025
    const/4 v2, 0x0

    .line 1032
    .end local v3           #dataLength:I
    .end local v4           #readLength:I
    :cond_2
    if-eqz v0, :cond_3

    .line 1033
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_3
    :goto_1
    move-object v5, v2

    .line 1039
    goto :goto_0

    .line 1028
    :catch_0
    move-exception v5

    .line 1032
    if-eqz v0, :cond_3

    .line 1033
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1035
    :catch_1
    move-exception v5

    goto :goto_1

    .line 1031
    :catchall_0
    move-exception v5

    .line 1032
    if-eqz v0, :cond_4

    .line 1033
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1036
    :cond_4
    :goto_2
    throw v5

    .line 1035
    :catch_2
    move-exception v5

    goto :goto_1

    :catch_3
    move-exception v6

    goto :goto_2
.end method

.method private updateContact(Lcom/android/mms/data/Contact;Z)V
    .locals 8
    .parameter "c"
    .parameter "isIdBase"

    .prologue
    const-string v7, "Mms/ContactsCache"

    .line 736
    const-string v5, "Mms/ContactsCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateContact(),contact="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    if-nez p1, :cond_0

    .line 817
    :goto_0
    return-void

    .line 742
    :cond_0
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1000(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isNumberCanAddToContact(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 747
    monitor-enter p1

    .line 748
    const/4 v5, 0x0

    :try_start_0
    invoke-static {p1, v5}, Lcom/android/mms/data/Contact;->access$102(Lcom/android/mms/data/Contact;Z)Z

    .line 749
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 750
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 754
    :cond_1
    const/4 v0, 0x0

    .line 755
    .local v0, entry:Lcom/android/mms/data/Contact;
    if-eqz p2, :cond_3

    .line 756
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$700(Lcom/android/mms/data/Contact;)J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfo(J)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 760
    :goto_1
    monitor-enter p1

    .line 761
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/android/mms/data/Contact$ContactsCache;->contactChanged(Lcom/android/mms/data/Contact;Lcom/android/mms/data/Contact;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 762
    const-string v5, "Mms/ContactsCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateContact(),contact changed for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$400(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1000(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/mms/data/Contact;->access$1002(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 765
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$600(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/mms/data/Contact;->access$602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 766
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$700(Lcom/android/mms/data/Contact;)J

    move-result-wide v5

    invoke-static {p1, v5, v6}, Lcom/android/mms/data/Contact;->access$702(Lcom/android/mms/data/Contact;J)J

    .line 767
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$800(Lcom/android/mms/data/Contact;)I

    move-result v5

    invoke-static {p1, v5}, Lcom/android/mms/data/Contact;->access$802(Lcom/android/mms/data/Contact;I)I

    .line 768
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1100(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/mms/data/Contact;->access$1102(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 769
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)[B

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/mms/data/Contact;->access$902(Lcom/android/mms/data/Contact;[B)[B

    .line 773
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1000(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isLocalNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 774
    iget-object v5, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    const v6, 0x7f09011f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/mms/data/Contact;->access$402(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 778
    :goto_2
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1200(Lcom/android/mms/data/Contact;)V

    .line 782
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1300(Lcom/android/mms/data/Contact;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 783
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/MmsApp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090229

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 784
    .local v4, onlineLocker:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$402(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 785
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$1402(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 803
    .end local v4           #onlineLocker:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/mms/data/Contact;->access$1500()Ljava/util/HashSet;

    move-result-object v5

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 804
    :try_start_2
    invoke-static {}, Lcom/android/mms/data/Contact;->access$1500()Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 805
    .local v2, iterator:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/mms/data/Contact$UpdateListener;>;"
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 806
    :try_start_3
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/data/Contact$UpdateListener;

    .line 807
    .local v3, l:Lcom/android/mms/data/Contact$UpdateListener;
    const-string v5, "Mms/ContactsCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updating "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    invoke-interface {v3, p1}, Lcom/android/mms/data/Contact$UpdateListener;->onUpdate(Lcom/android/mms/data/Contact;)V

    goto :goto_3

    .line 816
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #iterator:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/mms/data/Contact$UpdateListener;>;"
    .end local v3           #l:Lcom/android/mms/data/Contact$UpdateListener;
    :catchall_1
    move-exception v5

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    .line 758
    :cond_3
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1000(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfo(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v0

    goto/16 :goto_1

    .line 776
    :cond_4
    :try_start_4
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$400(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/mms/data/Contact;->access$402(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 805
    :catchall_2
    move-exception v6

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v6

    .line 811
    :cond_5
    monitor-enter p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 812
    const/4 v5, 0x0

    :try_start_7
    invoke-static {p1, v5}, Lcom/android/mms/data/Contact;->access$102(Lcom/android/mms/data/Contact;Z)Z

    .line 813
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 814
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 815
    :try_start_8
    invoke-static {p1}, Lcom/android/mms/data/RecipientIdCache;->updateNumber(Lcom/android/mms/data/Contact;)V

    .line 816
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_0

    .line 814
    :catchall_3
    move-exception v5

    :try_start_9
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/android/mms/data/Contact;
    .locals 9
    .parameter "numberOrEmail"

    .prologue
    const-string v8, "Mms/ContactsCache"

    .line 1136
    const-string v6, "Mms/ContactsCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get(String),numberOrEmail="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    monitor-enter p0

    .line 1141
    :try_start_0
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const/4 v6, 0x1

    move v3, v6

    .line 1143
    .local v3, isNotRegularPhoneNumber:Z
    :goto_0
    if-eqz v3, :cond_2

    move-object v4, p1

    .line 1147
    .local v4, key:Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1148
    .local v1, candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    if-eqz v1, :cond_5

    .line 1149
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1150
    .local v5, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v5, :cond_6

    .line 1151
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 1152
    .local v0, c:Lcom/android/mms/data/Contact;
    if-eqz v3, :cond_3

    .line 1153
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1000(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1154
    const-string v6, "Mms/ContactsCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "got none regularPhoneNumber="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    monitor-exit p0

    .line 1173
    .end local v2           #i:I
    .end local v5           #length:I
    :goto_3
    return-object v0

    .line 1141
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v1           #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    .end local v3           #isNotRegularPhoneNumber:Z
    .end local v4           #key:Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    move v3, v6

    goto :goto_0

    .line 1143
    .restart local v3       #isNotRegularPhoneNumber:Z
    :cond_2
    sget-object v6, Lcom/android/mms/data/Contact$ContactsCache;->sStaticKeyBuffer:Ljava/nio/CharBuffer;

    invoke-direct {p0, p1, v6}, Lcom/android/mms/data/Contact$ContactsCache;->key(Ljava/lang/String;Ljava/nio/CharBuffer;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    goto :goto_1

    .line 1158
    .restart local v0       #c:Lcom/android/mms/data/Contact;
    .restart local v1       #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    .restart local v2       #i:I
    .restart local v4       #key:Ljava/lang/String;
    .restart local v5       #length:I
    :cond_3
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1000(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1160
    monitor-exit p0

    goto :goto_3

    .line 1174
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v1           #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    .end local v2           #i:I
    .end local v3           #isNotRegularPhoneNumber:Z
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #length:I
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1150
    .restart local v0       #c:Lcom/android/mms/data/Contact;
    .restart local v1       #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    .restart local v2       #i:I
    .restart local v3       #isNotRegularPhoneNumber:Z
    .restart local v4       #key:Ljava/lang/String;
    .restart local v5       #length:I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1165
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v2           #i:I
    .end local v5           #length:I
    :cond_5
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1167
    .restart local v1       #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    iget-object v6, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1169
    :cond_6
    new-instance v0, Lcom/android/mms/data/Contact;

    const/4 v6, 0x0

    invoke-direct {v0, p1, v6}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V

    .line 1170
    .restart local v0       #c:Lcom/android/mms/data/Contact;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1172
    const-string v6, "Mms/ContactsCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "return new contact="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method public get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;
    .locals 7
    .parameter "number"
    .parameter "canBlock"

    .prologue
    const-string v6, "Mms/ContactsCache"

    .line 622
    const-string v4, "Mms/ContactsCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get()number=,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",canBlock="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 625
    const-string p1, ""

    .line 633
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->get(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 634
    .local v1, contact:Lcom/android/mms/data/Contact;
    const/4 v2, 0x0

    .line 636
    .local v2, r:Ljava/lang/Runnable;
    monitor-enter v1

    .line 639
    :goto_0
    if-eqz p2, :cond_1

    :try_start_0
    invoke-static {v1}, Lcom/android/mms/data/Contact;->access$100(Lcom/android/mms/data/Contact;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 641
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 642
    :catch_0
    move-exception v4

    goto :goto_0

    .line 649
    :cond_1
    :try_start_2
    invoke-static {v1}, Lcom/android/mms/data/Contact;->access$200(Lcom/android/mms/data/Contact;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v1}, Lcom/android/mms/data/Contact;->access$100(Lcom/android/mms/data/Contact;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 650
    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/android/mms/data/Contact;->access$202(Lcom/android/mms/data/Contact;Z)Z

    .line 652
    const-string v4, "Mms/ContactsCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "async update for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", canBlock= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    move-object v0, v1

    .line 655
    .local v0, c:Lcom/android/mms/data/Contact;
    new-instance v3, Lcom/android/mms/data/Contact$ContactsCache$1;

    invoke-direct {v3, p0, v0}, Lcom/android/mms/data/Contact$ContactsCache$1;-><init>(Lcom/android/mms/data/Contact$ContactsCache;Lcom/android/mms/data/Contact;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 665
    .end local v2           #r:Ljava/lang/Runnable;
    .local v3, r:Ljava/lang/Runnable;
    const/4 v4, 0x1

    :try_start_3
    invoke-static {v1, v4}, Lcom/android/mms/data/Contact;->access$102(Lcom/android/mms/data/Contact;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, v3

    .line 668
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v3           #r:Ljava/lang/Runnable;
    .restart local v2       #r:Ljava/lang/Runnable;
    :cond_2
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 672
    if-eqz v2, :cond_3

    .line 673
    if-eqz p2, :cond_4

    .line 674
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 679
    :cond_3
    :goto_1
    return-object v1

    .line 668
    :catchall_0
    move-exception v4

    :goto_2
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v4

    .line 676
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/mms/data/Contact$ContactsCache;->pushTask(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 668
    .end local v2           #r:Ljava/lang/Runnable;
    .restart local v0       #c:Lcom/android/mms/data/Contact;
    .restart local v3       #r:Ljava/lang/Runnable;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #r:Ljava/lang/Runnable;
    .restart local v2       #r:Ljava/lang/Runnable;
    goto :goto_2
.end method

.method public getContactInfo(J)Lcom/android/mms/data/Contact;
    .locals 3
    .parameter "id"

    .prologue
    .line 886
    new-instance v0, Lcom/android/mms/data/Contact;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/Long;Lcom/android/mms/data/Contact$1;)V

    .line 887
    .local v0, entry:Lcom/android/mms/data/Contact;
    invoke-direct {p0}, Lcom/android/mms/data/Contact$ContactsCache;->checkContactProviderAvailible()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    .line 891
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/data/Contact$ContactsCache;->queryContactInfoById(J)Lcom/android/mms/data/Contact;

    move-result-object v1

    goto :goto_0
.end method

.method public getContactInfo(Ljava/lang/String;)Lcom/android/mms/data/Contact;
    .locals 2
    .parameter "numberOrEmail"

    .prologue
    .line 872
    new-instance v0, Lcom/android/mms/data/Contact;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V

    .line 873
    .local v0, entry:Lcom/android/mms/data/Contact;
    invoke-direct {p0}, Lcom/android/mms/data/Contact$ContactsCache;->checkContactProviderAvailible()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    .line 880
    :goto_0
    return-object v1

    .line 877
    :cond_0
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 878
    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfoForEmailAddress(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v1

    goto :goto_0

    .line 880
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfoForPhoneNumber(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v1

    goto :goto_0
.end method

.method invalidate()V
    .locals 7

    .prologue
    const-string v6, "invalidate()"

    const-string v5, "Mms/ContactsCache"

    .line 1178
    const-string v4, "Mms/ContactsCache"

    const-string v4, "invalidate()"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    monitor-enter p0

    .line 1182
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1183
    .local v0, alc:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    .line 1184
    .local v1, c:Lcom/android/mms/data/Contact;
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1185
    const/4 v4, 0x1

    :try_start_1
    invoke-static {v1, v4}, Lcom/android/mms/data/Contact;->access$202(Lcom/android/mms/data/Contact;Z)Z

    .line 1186
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4

    .line 1189
    .end local v0           #alc:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    .end local v1           #c:Lcom/android/mms/data/Contact;
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    :cond_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1191
    const-string v4, "Mms/ContactsCache"

    const-string v4, "invalidate()"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    return-void
.end method

.method public pushTask(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mTaskQueue:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->push(Ljava/lang/Runnable;)V

    .line 619
    return-void
.end method

.method public queryContactInfoById(J)Lcom/android/mms/data/Contact;
    .locals 9
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    const-string v8, "Mms/ContactsCache"

    .line 963
    const-string v0, "Mms/ContactsCache"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryContactInfoById(),id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    new-instance v7, Lcom/android/mms/data/Contact;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v7, v0, v3}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/Long;Lcom/android/mms/data/Contact$1;)V

    .line 968
    .local v7, entry:Lcom/android/mms/data/Contact;
    sget-object v0, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 970
    .local v1, Uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 973
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 974
    const-string v0, "Mms/ContactsCache"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryContactInfoById("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") returned NULL cursor!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " contact uri used "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    :goto_0
    return-object v7

    .line 980
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 981
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 982
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$402(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 984
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$1002(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 985
    invoke-static {v7}, Lcom/android/mms/data/Contact;->access$400(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7}, Lcom/android/mms/data/Contact;->access$1000(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/data/Contact;->formatNameAndNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$1402(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 986
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/data/Contact$ContactsCache;->getStatusIconResourceId(I)I

    move-result v0

    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$802(Lcom/android/mms/data/Contact;I)I

    .line 988
    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$1102(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 990
    invoke-direct {p0, v7}, Lcom/android/mms/data/Contact$ContactsCache;->loadAvatarData(Lcom/android/mms/data/Contact;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 993
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

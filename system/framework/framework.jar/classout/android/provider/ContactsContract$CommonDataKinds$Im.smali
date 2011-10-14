.class public final Landroid/provider/ContactsContract$CommonDataKinds$Im;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;
.implements Landroid/provider/ContactsContract$CommonDataKinds$CommonColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Im"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/im"

.field public static final CUSTOM_PROTOCOL:Ljava/lang/String; = "data6"

.field public static final PROTOCOL:Ljava/lang/String; = "data5"

.field public static final PROTOCOL_AIM:I = 0x0

.field public static final PROTOCOL_CUSTOM:I = -0x1

.field public static final PROTOCOL_GOOGLE_TALK:I = 0x5

.field public static final PROTOCOL_ICQ:I = 0x6

.field public static final PROTOCOL_JABBER:I = 0x7

.field public static final PROTOCOL_MSN:I = 0x1

.field public static final PROTOCOL_NETMEETING:I = 0x8

.field public static final PROTOCOL_QQ:I = 0x4

.field public static final PROTOCOL_SKYPE:I = 0x3

.field public static final PROTOCOL_YAHOO:I = 0x2

.field public static final TYPE_HOME:I = 0x1

.field public static final TYPE_OTHER:I = 0x3

.field public static final TYPE_WORK:I = 0x2


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 4271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getProtocolLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 5
    .parameter "res"
    .parameter "type"
    .parameter "label"

    .prologue
    .line 4358
    const/4 v1, -0x1

    if-ne p1, v1, :cond_b

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    move-object v1, p2

    .line 4362
    :goto_a
    return-object v1

    .line 4361
    :cond_b
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabelResource(I)I

    move-result v0

    .line 4362
    .local v0, labelRes:I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_a
.end method

.method public static final getProtocolLabelResource(I)I
    .registers 2
    .parameter "type"

    .prologue
    .line 4337
    packed-switch p0, :pswitch_data_2c

    .line 4347
    const v0, 0x104030a

    :goto_6
    return v0

    .line 4338
    :pswitch_7
    const v0, 0x104030b

    goto :goto_6

    .line 4339
    :pswitch_b
    const v0, 0x104030c

    goto :goto_6

    .line 4340
    :pswitch_f
    const v0, 0x104030d

    goto :goto_6

    .line 4341
    :pswitch_13
    const v0, 0x104030e

    goto :goto_6

    .line 4342
    :pswitch_17
    const v0, 0x104030f

    goto :goto_6

    .line 4343
    :pswitch_1b
    const v0, 0x1040310

    goto :goto_6

    .line 4344
    :pswitch_1f
    const v0, 0x1040311

    goto :goto_6

    .line 4345
    :pswitch_23
    const v0, 0x1040312

    goto :goto_6

    .line 4346
    :pswitch_27
    const v0, 0x1040313

    goto :goto_6

    .line 4337
    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_7
        :pswitch_b
        :pswitch_f
        :pswitch_13
        :pswitch_17
        :pswitch_1b
        :pswitch_1f
        :pswitch_23
        :pswitch_27
    .end packed-switch
.end method

.method public static final getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 5
    .parameter "res"
    .parameter "type"
    .parameter "label"

    .prologue
    .line 4324
    if-nez p1, :cond_a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    move-object v1, p2

    .line 4328
    :goto_9
    return-object v1

    .line 4327
    :cond_a
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getTypeLabelResource(I)I

    move-result v0

    .line 4328
    .local v0, labelRes:I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_9
.end method

.method public static final getTypeLabelResource(I)I
    .registers 2
    .parameter "type"

    .prologue
    .line 4309
    packed-switch p0, :pswitch_data_14

    .line 4313
    const v0, 0x1040306

    :goto_6
    return v0

    .line 4310
    :pswitch_7
    const v0, 0x1040307

    goto :goto_6

    .line 4311
    :pswitch_b
    const v0, 0x1040308

    goto :goto_6

    .line 4312
    :pswitch_f
    const v0, 0x1040309

    goto :goto_6

    .line 4309
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_7
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method

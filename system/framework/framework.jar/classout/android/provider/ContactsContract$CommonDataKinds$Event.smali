.class public final Landroid/provider/ContactsContract$CommonDataKinds$Event;
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
    name = "Event"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/contact_event"

.field public static final START_DATE:Ljava/lang/String; = "data1"

.field public static final TYPE_ANNIVERSARY:I = 0x1

.field public static final TYPE_BIRTHDAY:I = 0x3

.field public static final TYPE_OTHER:I = 0x2


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 4672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTypeResource(Ljava/lang/Integer;)I
    .registers 3
    .parameter "type"

    .prologue
    const v1, 0x10402fc

    .line 4692
    if-nez p0, :cond_7

    move v0, v1

    .line 4700
    :goto_6
    return v0

    .line 4695
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    move v0, v1

    .line 4700
    goto :goto_6

    .line 4697
    :pswitch_10
    const v0, 0x10402fb

    goto :goto_6

    .line 4698
    :pswitch_14
    const v0, 0x10402fa

    goto :goto_6

    :pswitch_18
    move v0, v1

    .line 4699
    goto :goto_6

    .line 4695
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_10
        :pswitch_18
        :pswitch_14
    .end packed-switch
.end method

.class public Lcom/nttdocomo/android/areamail/provider/AreaMailDatabaseManager$ReceiveEntry;
.super Ljava/lang/Object;
.source "AreaMailDatabaseManager.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/android/areamail/provider/AreaMailDatabaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReceiveEntry"
.end annotation


# static fields
.field public static final MESSAGEID:Ljava/lang/String; = "messageid"

.field public static final TEXT:Ljava/lang/String; = "text"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

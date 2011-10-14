.class public Lcom/nttdocomo/android/areamail/provider/AreaMailDatabaseManager$Message;
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
    name = "Message"
.end annotation


# static fields
.field public static final APPID:Ljava/lang/String; = "appid"

.field public static final BODY:Ljava/lang/String; = "body"

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final READ:Ljava/lang/String; = "read"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

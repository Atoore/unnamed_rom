.class Lcom/sec/android/provider/logsprovider/LogsReceiver$AccountInfo;
.super Ljava/lang/Object;
.source "LogsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/provider/logsprovider/LogsReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountInfo"
.end annotation


# instance fields
.field public mAccountName:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field public mSptype:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/provider/logsprovider/LogsReceiver$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sec/android/provider/logsprovider/LogsReceiver$AccountInfo;-><init>()V

    return-void
.end method

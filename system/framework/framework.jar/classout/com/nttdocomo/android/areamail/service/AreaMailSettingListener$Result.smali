.class Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener$Result;
.super Ljava/lang/Object;
.source "AreaMailSettingListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Result"
.end annotation


# instance fields
.field messageId:I

.field request:I

.field result:Z

.field final synthetic this$0:Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener;


# direct methods
.method private constructor <init>(Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 31
    iput-object p1, p0, Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener$Result;->this$0:Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v1, p0, Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener$Result;->request:I

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener$Result;->result:Z

    .line 40
    iput v1, p0, Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener$Result;->messageId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener;Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener$Result;-><init>(Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener;)V

    return-void
.end method

.class Lcom/nttdocomo/android/areamail/service/AreaMailNotificationListener$1;
.super Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailNotificationListener$Stub;
.source "AreaMailNotificationListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/android/areamail/service/AreaMailNotificationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/android/areamail/service/AreaMailNotificationListener;


# direct methods
.method constructor <init>(Lcom/nttdocomo/android/areamail/service/AreaMailNotificationListener;)V
    .registers 2
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/nttdocomo/android/areamail/service/AreaMailNotificationListener$1;->this$0:Lcom/nttdocomo/android/areamail/service/AreaMailNotificationListener;

    invoke-direct {p0}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailNotificationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Z)V
    .registers 6
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 44
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/AreaMailNotificationListener$1;->this$0:Lcom/nttdocomo/android/areamail/service/AreaMailNotificationListener;

    iget-object v0, v0, Lcom/nttdocomo/android/areamail/service/AreaMailNotificationListener;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_11

    const/4 v1, 0x1

    :goto_8
    const/4 v2, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 45
    return-void

    :cond_11
    move v1, v3

    .line 44
    goto :goto_8
.end method

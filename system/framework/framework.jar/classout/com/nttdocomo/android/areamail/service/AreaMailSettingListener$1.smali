.class Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener$1;
.super Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener$Stub;
.source "AreaMailSettingListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener;


# direct methods
.method constructor <init>(Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener;)V
    .registers 2
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener$1;->this$0:Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener;

    invoke-direct {p0}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(IZI)V
    .registers 8
    .parameter "request"
    .parameter "result"
    .parameter "messageId"

    .prologue
    const/4 v3, 0x0

    .line 66
    new-instance v0, Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener$Result;

    iget-object v1, p0, Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener$1;->this$0:Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener$Result;-><init>(Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener;Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener$1;)V

    .line 67
    .local v0, res:Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener$Result;
    iput p1, v0, Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener$Result;->request:I

    .line 68
    iput-boolean p2, v0, Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener$Result;->result:Z

    .line 69
    iput p3, v0, Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener$Result;->messageId:I

    .line 70
    iget-object v1, p0, Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener$1;->this$0:Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener;

    iget-object v1, v1, Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v3, v3, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 71
    return-void
.end method

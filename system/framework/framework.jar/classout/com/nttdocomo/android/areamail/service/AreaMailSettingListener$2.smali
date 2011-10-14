.class Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener$2;
.super Landroid/os/Handler;
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
    .line 74
    iput-object p1, p0, Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener$2;->this$0:Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    .line 81
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_16

    .line 87
    :goto_5
    return-void

    .line 83
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener$Result;

    .line 84
    .local v0, res:Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener$Result;
    iget-object v1, p0, Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener$2;->this$0:Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener;

    iget v2, v0, Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener$Result;->request:I

    iget-boolean v3, v0, Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener$Result;->result:Z

    iget v4, v0, Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener$Result;->messageId:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener;->onResult(IZI)V

    goto :goto_5

    .line 81
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method

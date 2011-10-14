.class Lcom/android/mms/ui/ComposeMessage$68;
.super Landroid/os/Handler;
.source "ComposeMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessage;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessage;)V
    .locals 0
    .parameter

    .prologue
    .line 7225
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$68;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 7229
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 7237
    :goto_0
    return-void

    .line 7232
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$68;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0, v1, v1}, Lcom/android/mms/ui/ComposeMessage;->access$3800(Lcom/android/mms/ui/ComposeMessage;ZZ)V

    goto :goto_0

    .line 7229
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

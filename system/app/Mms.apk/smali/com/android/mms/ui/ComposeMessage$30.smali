.class Lcom/android/mms/ui/ComposeMessage$30;
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
    .line 3025
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$30;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 3029
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 3040
    :goto_0
    return-void

    .line 3031
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$30;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$1500(Lcom/android/mms/ui/ComposeMessage;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3032
    const/4 v0, -0x1

    sput v0, Lcom/android/mms/ui/MessageListAdapter;->animationIdx:I

    goto :goto_0

    .line 3034
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$30;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessage;->access$5100(Lcom/android/mms/ui/ComposeMessage;I)V

    goto :goto_0

    .line 3029
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

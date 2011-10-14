.class Lcom/android/mms/ui/ConversationList$5;
.super Landroid/os/Handler;
.source "ConversationList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationList;->getDeleteEventHandler()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList;)V
    .locals 0
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$5;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 326
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 334
    :goto_0
    return-void

    .line 328
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$5;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationList;->onDeleteStart()V

    goto :goto_0

    .line 331
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$5;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationList;->onDeleteCompleted()V

    goto :goto_0

    .line 326
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

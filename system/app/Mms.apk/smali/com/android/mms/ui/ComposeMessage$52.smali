.class Lcom/android/mms/ui/ComposeMessage$52;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;


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
    .line 5955
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$52;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Lcom/android/mms/ui/MessageListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 5967
    const-string v0, "Mms/ComposeMessage"

    const-string v1, "mDataSetChangedListener.onContentChanged()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5968
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$52;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$8500(Lcom/android/mms/ui/ComposeMessage;)V

    .line 5969
    return-void
.end method

.method public onDataSetChanged(Lcom/android/mms/ui/MessageListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 5957
    const-string v0, "Mms/ComposeMessage"

    const-string v1, "mDataSetChangedListener.onDataSetChanged()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5958
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$52;->this$0:Lcom/android/mms/ui/ComposeMessage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessage;->access$8302(Lcom/android/mms/ui/ComposeMessage;Z)Z

    .line 5960
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$52;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-boolean v0, v0, Lcom/android/mms/ui/ComposeMessage;->isEnter:Z

    if-eqz v0, :cond_0

    .line 5961
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$52;->this$0:Lcom/android/mms/ui/ComposeMessage;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/mms/ui/ComposeMessage;->isEnter:Z

    .line 5962
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$52;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$8400(Lcom/android/mms/ui/ComposeMessage;)V

    .line 5964
    :cond_0
    return-void
.end method

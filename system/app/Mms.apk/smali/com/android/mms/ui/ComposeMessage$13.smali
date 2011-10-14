.class Lcom/android/mms/ui/ComposeMessage$13;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 1490
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$13;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "motionEvent"

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$13;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessage;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->setThawPaste()V

    .line 1494
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$13;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$600(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/OnEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1495
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$13;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$600(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/OnEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/mms/ui/OnEventListener;->onEvent()V

    .line 1497
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 1498
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 1500
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

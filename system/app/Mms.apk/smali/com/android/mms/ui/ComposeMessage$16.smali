.class Lcom/android/mms/ui/ComposeMessage$16;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessage;->initRecipientsEditor()V
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
    .line 1714
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$16;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "motionEvent"

    .prologue
    .line 1717
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1718
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$16;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessage;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->setThawPaste()V

    .line 1719
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$16;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$900(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    .line 1721
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

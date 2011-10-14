.class Lcom/android/mms/ui/ComposeMessage$19;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessage;->showSubjectEditor(Z)V
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
    .line 1940
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$19;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 1942
    if-eqz p2, :cond_0

    .line 1944
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$19;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessage;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->setThawPaste()V

    .line 1946
    :cond_0
    return-void
.end method

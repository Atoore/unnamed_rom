.class Lcom/android/mms/ui/ComposeMessage$57;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessage;->showSip()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessage;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessage;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6517
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$57;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessage$57;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 6519
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$57;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$400(Lcom/android/mms/ui/ComposeMessage;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 6521
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getIsSoftInputMethodShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6522
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$57;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 6523
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$57;->val$view:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 6525
    :cond_0
    return-void
.end method

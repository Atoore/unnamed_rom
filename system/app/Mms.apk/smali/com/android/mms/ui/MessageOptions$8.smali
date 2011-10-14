.class Lcom/android/mms/ui/MessageOptions$8;
.super Ljava/lang/Object;
.source "MessageOptions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageOptions;->showFileRenameDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageOptions;

.field final synthetic val$editField:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageOptions;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1385
    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions$8;->this$0:Lcom/android/mms/ui/MessageOptions;

    iput-object p2, p0, Lcom/android/mms/ui/MessageOptions$8;->val$editField:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions$8;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-static {v0}, Lcom/android/mms/ui/MessageOptions;->access$1100(Lcom/android/mms/ui/MessageOptions;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$8;->val$editField:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1388
    return-void
.end method

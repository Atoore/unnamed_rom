.class Lcom/android/mms/ui/MessageOptions$6;
.super Ljava/lang/Object;
.source "MessageOptions.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 1323
    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions$6;->this$0:Lcom/android/mms/ui/MessageOptions;

    iput-object p2, p0, Lcom/android/mms/ui/MessageOptions$6;->val$editField:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 1339
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 1345
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "cs"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v1, -0x1

    .line 1327
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions$6;->val$editField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1328
    invoke-static {}, Lcom/android/mms/ui/MessageOptions;->access$1000()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1334
    :goto_0
    return-void

    .line 1330
    :cond_0
    invoke-static {}, Lcom/android/mms/ui/MessageOptions;->access$1000()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

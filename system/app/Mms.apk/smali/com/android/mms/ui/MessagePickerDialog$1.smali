.class Lcom/android/mms/ui/MessagePickerDialog$1;
.super Ljava/lang/Object;
.source "MessagePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessagePickerDialog;-><init>(Landroid/content/Context;ILcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;IIIILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessagePickerDialog;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessagePickerDialog;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/mms/ui/MessagePickerDialog$1;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    iput-object p2, p0, Lcom/android/mms/ui/MessagePickerDialog$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 149
    iget-object v3, p0, Lcom/android/mms/ui/MessagePickerDialog$1;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-static {v3}, Lcom/android/mms/ui/MessagePickerDialog;->access$000(Lcom/android/mms/ui/MessagePickerDialog;)Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;->getMText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, curNum:Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    invoke-static {}, Lcom/android/mms/ui/MessagePickerDialog;->access$100()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 157
    .local v1, currentNum:I
    iget-object v3, p0, Lcom/android/mms/ui/MessagePickerDialog$1;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-static {v3}, Lcom/android/mms/ui/MessagePickerDialog;->access$200(Lcom/android/mms/ui/MessagePickerDialog;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 158
    iget-object v3, p0, Lcom/android/mms/ui/MessagePickerDialog$1;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-static {v3}, Lcom/android/mms/ui/MessagePickerDialog;->access$200(Lcom/android/mms/ui/MessagePickerDialog;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MessagePickerDialog$1;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessagePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 161
    :cond_1
    invoke-static {}, Lcom/android/mms/ui/MessagePickerDialog;->access$100()I

    move-result v3

    if-gt v3, v1, :cond_3

    invoke-static {}, Lcom/android/mms/ui/MessagePickerDialog;->access$300()I

    move-result v3

    if-gt v1, v3, :cond_3

    .line 162
    iget-object v3, p0, Lcom/android/mms/ui/MessagePickerDialog$1;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-static {v3}, Lcom/android/mms/ui/MessagePickerDialog;->access$400(Lcom/android/mms/ui/MessagePickerDialog;)Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;->onNumberSet(I)V

    .line 163
    iget-object v3, p0, Lcom/android/mms/ui/MessagePickerDialog$1;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessagePickerDialog;->dismiss()V

    .line 173
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/MessagePickerDialog$1;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-static {v3}, Lcom/android/mms/ui/MessagePickerDialog;->access$000(Lcom/android/mms/ui/MessagePickerDialog;)Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;->clearFocus()V

    .line 174
    return-void

    .line 164
    :cond_3
    invoke-static {}, Lcom/android/mms/ui/MessagePickerDialog;->access$100()I

    move-result v3

    if-le v3, v1, :cond_4

    .line 165
    iget-object v3, p0, Lcom/android/mms/ui/MessagePickerDialog$1;->val$context:Landroid/content/Context;

    const v4, 0x7f09019c

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/mms/ui/MessagePickerDialog;->access$100()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, message:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/MessagePickerDialog$1;->val$context:Landroid/content/Context;

    invoke-static {v3, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 167
    iget-object v3, p0, Lcom/android/mms/ui/MessagePickerDialog$1;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-static {v3}, Lcom/android/mms/ui/MessagePickerDialog;->access$000(Lcom/android/mms/ui/MessagePickerDialog;)Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;->getMText()Landroid/widget/EditText;

    move-result-object v3

    invoke-static {}, Lcom/android/mms/ui/MessagePickerDialog;->access$100()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 168
    .end local v2           #message:Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/android/mms/ui/MessagePickerDialog;->access$300()I

    move-result v3

    if-ge v3, v1, :cond_2

    .line 169
    iget-object v3, p0, Lcom/android/mms/ui/MessagePickerDialog$1;->val$context:Landroid/content/Context;

    const v4, 0x7f09019d

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/mms/ui/MessagePickerDialog;->access$300()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 170
    .restart local v2       #message:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/MessagePickerDialog$1;->val$context:Landroid/content/Context;

    invoke-static {v3, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 171
    iget-object v3, p0, Lcom/android/mms/ui/MessagePickerDialog$1;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-static {v3}, Lcom/android/mms/ui/MessagePickerDialog;->access$000(Lcom/android/mms/ui/MessagePickerDialog;)Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;->getMText()Landroid/widget/EditText;

    move-result-object v3

    invoke-static {}, Lcom/android/mms/ui/MessagePickerDialog;->access$300()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

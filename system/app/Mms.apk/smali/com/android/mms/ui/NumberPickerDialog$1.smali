.class Lcom/android/mms/ui/NumberPickerDialog$1;
.super Ljava/lang/Object;
.source "NumberPickerDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/NumberPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/NumberPickerDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NumberPickerDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/mms/ui/NumberPickerDialog$1;->this$0:Lcom/android/mms/ui/NumberPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 207
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 192
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 195
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 196
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/android/mms/ui/NumberPickerDialog;->access$000()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/mms/ui/NumberPickerDialog$1;->this$0:Lcom/android/mms/ui/NumberPickerDialog;

    invoke-static {v0}, Lcom/android/mms/ui/NumberPickerDialog;->access$200(Lcom/android/mms/ui/NumberPickerDialog;)V

    .line 198
    iget-object v0, p0, Lcom/android/mms/ui/NumberPickerDialog$1;->this$0:Lcom/android/mms/ui/NumberPickerDialog;

    invoke-static {v0}, Lcom/android/mms/ui/NumberPickerDialog;->access$300(Lcom/android/mms/ui/NumberPickerDialog;)Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/ui/NumberPickerDialog;->access$000()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lcom/android/mms/ui/NumberPickerDialog$1;->this$0:Lcom/android/mms/ui/NumberPickerDialog;

    invoke-static {v0}, Lcom/android/mms/ui/NumberPickerDialog;->access$300(Lcom/android/mms/ui/NumberPickerDialog;)Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 203
    :cond_0
    return-void
.end method
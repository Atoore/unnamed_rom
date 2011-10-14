.class Lcom/android/mms/ui/MessagePickerDialog$3;
.super Ljava/lang/Object;
.source "MessagePickerDialog.java"

# interfaces
.implements Landroid/text/method/KeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessagePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessagePickerDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessagePickerDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/mms/ui/MessagePickerDialog$3;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    .locals 0
    .parameter "view"
    .parameter "content"
    .parameter "states"

    .prologue
    .line 235
    return-void
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "text"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 244
    packed-switch p3, :pswitch_data_0

    .line 252
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 247
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/MessagePickerDialog$3;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-static {v0}, Lcom/android/mms/ui/MessagePickerDialog;->access$000(Lcom/android/mms/ui/MessagePickerDialog;)Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 248
    const/4 v0, 0x1

    goto :goto_0

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "text"
    .parameter "event"

    .prologue
    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "text"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 262
    const/4 v0, 0x0

    return v0
.end method

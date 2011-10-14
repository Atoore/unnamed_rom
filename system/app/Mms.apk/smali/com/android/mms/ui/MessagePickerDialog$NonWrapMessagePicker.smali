.class public Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;
.super Landroid/widget/NumberPicker;
.source "MessagePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessagePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NonWrapMessagePicker"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 204
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 208
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 214
    invoke-direct {p0, p1, p2}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 215
    return-void
.end method


# virtual methods
.method protected changeCurrent(I)V
    .locals 1
    .parameter "current"

    .prologue
    .line 220
    invoke-static {}, Lcom/android/mms/ui/MessagePickerDialog;->access$300()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 221
    invoke-static {}, Lcom/android/mms/ui/MessagePickerDialog;->access$300()I

    move-result p1

    .line 225
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/NumberPicker;->changeCurrent(I)V

    .line 226
    return-void

    .line 222
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;->getBeginRange()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;->getBeginRange()I

    move-result p1

    goto :goto_0
.end method

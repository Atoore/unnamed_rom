.class public Lcom/android/mms/ui/NumberPickerDialog;
.super Landroid/app/AlertDialog;
.source "NumberPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;,
        Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;
    }
.end annotation


# static fields
.field private static mRangeMax:I

.field private static mRangeMin:I


# instance fields
.field private final mCallback:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mInitialNumber:I

.field private final mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

.field private final mNumberpicker_watcher:Landroid/text/TextWatcher;

.field private mOutOfRangeToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIIILjava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "theme"
    .parameter "callBack"
    .parameter "number"
    .parameter "rangeMin"
    .parameter "rangeMax"
    .parameter "title_id"
    .parameter "title_str"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 189
    new-instance v2, Lcom/android/mms/ui/NumberPickerDialog$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/NumberPickerDialog$1;-><init>(Lcom/android/mms/ui/NumberPickerDialog;)V

    iput-object v2, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberpicker_watcher:Landroid/text/TextWatcher;

    .line 87
    iput-object p3, p0, Lcom/android/mms/ui/NumberPickerDialog;->mCallback:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    .line 88
    iput p4, p0, Lcom/android/mms/ui/NumberPickerDialog;->mInitialNumber:I

    .line 90
    if-lez p7, :cond_0

    .line 91
    invoke-virtual {p0, p7}, Lcom/android/mms/ui/NumberPickerDialog;->setTitle(I)V

    .line 97
    :goto_0
    const/4 v2, -0x1

    const v3, 0x7f09006b

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p0}, Lcom/android/mms/ui/NumberPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 98
    const/4 v2, -0x2

    const v3, 0x7f09006a

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p0}, Lcom/android/mms/ui/NumberPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 102
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 104
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f03001d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 105
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/NumberPickerDialog;->setView(Landroid/view/View;)V

    .line 106
    const v2, 0x7f080082

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    iput-object v2, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    .line 107
    sput p6, Lcom/android/mms/ui/NumberPickerDialog;->mRangeMax:I

    .line 108
    sput p5, Lcom/android/mms/ui/NumberPickerDialog;->mRangeMin:I

    .line 109
    iget-object v2, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    invoke-virtual {v2}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberpicker_watcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 111
    iget-object v2, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->twSetMaxInputLength(I)V

    .line 112
    iget-object v2, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    const/4 v3, 0x0

    mul-int/lit8 v4, p6, 0xa

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->setRange(II)V

    .line 113
    iget-object v2, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    invoke-virtual {v2, p4}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->setCurrent(I)V

    .line 114
    iget-object v2, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    const-wide/16 v3, 0x96

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->setSpeed(J)V

    .line 121
    invoke-virtual {p0}, Lcom/android/mms/ui/NumberPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/android/mms/ui/NumberPickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 122
    return-void

    .line 93
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v1           #view:Landroid/view/View;
    :cond_0
    invoke-virtual {p0, p8}, Lcom/android/mms/ui/NumberPickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIIILjava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "callBack"
    .parameter "number"
    .parameter "rangeMin"
    .parameter "rangeMax"
    .parameter "title_id"
    .parameter "title_str"

    .prologue
    .line 74
    const v2, 0x10300a6

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/mms/ui/NumberPickerDialog;-><init>(Landroid/content/Context;ILcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIIILjava/lang/String;)V

    .line 76
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 38
    sget v0, Lcom/android/mms/ui/NumberPickerDialog;->mRangeMax:I

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 38
    sget v0, Lcom/android/mms/ui/NumberPickerDialog;->mRangeMin:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/NumberPickerDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/mms/ui/NumberPickerDialog;->showToast()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/NumberPickerDialog;)Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    return-object v0
.end method

.method private showToast()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 211
    iget-object v0, p0, Lcom/android/mms/ui/NumberPickerDialog;->mOutOfRangeToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/NumberPickerDialog;->mOutOfRangeToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/NumberPickerDialog;->mOutOfRangeToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/NumberPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/NumberPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090230

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    sget v4, Lcom/android/mms/ui/NumberPickerDialog;->mRangeMin:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    sget v5, Lcom/android/mms/ui/NumberPickerDialog;->mRangeMax:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/NumberPickerDialog;->mOutOfRangeToast:Landroid/widget/Toast;

    .line 216
    iget-object v0, p0, Lcom/android/mms/ui/NumberPickerDialog;->mOutOfRangeToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 218
    :cond_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/NumberPickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/mms/ui/NumberPickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/mms/ui/NumberPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 131
    :cond_0
    const/4 v0, -0x2

    if-eq p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/NumberPickerDialog;->mCallback:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    invoke-virtual {v0}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->clearFocus()V

    .line 133
    sget v0, Lcom/android/mms/ui/NumberPickerDialog;->mRangeMax:I

    iget-object v1, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    invoke-virtual {v1}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->getCurrent()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 134
    iget-object v0, p0, Lcom/android/mms/ui/NumberPickerDialog;->mCallback:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    sget v1, Lcom/android/mms/ui/NumberPickerDialog;->mRangeMax:I

    invoke-interface {v0, v1}, Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;->onNumberSet(I)V

    .line 142
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 143
    return-void

    .line 135
    :cond_2
    sget v0, Lcom/android/mms/ui/NumberPickerDialog;->mRangeMin:I

    iget-object v1, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    invoke-virtual {v1}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->getCurrent()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 136
    iget-object v0, p0, Lcom/android/mms/ui/NumberPickerDialog;->mCallback:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    sget v1, Lcom/android/mms/ui/NumberPickerDialog;->mRangeMin:I

    invoke-interface {v0, v1}, Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;->onNumberSet(I)V

    .line 137
    invoke-direct {p0}, Lcom/android/mms/ui/NumberPickerDialog;->showToast()V

    goto :goto_0

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/NumberPickerDialog;->mCallback:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    iget-object v1, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    invoke-virtual {v1}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->getCurrent()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;->onNumberSet(I)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 154
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 155
    const-string v1, "number"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 156
    .local v0, number:I
    iget-object v1, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->setCurrent(I)V

    .line 157
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 147
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 148
    .local v0, state:Landroid/os/Bundle;
    const-string v1, "number"

    iget-object v2, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    invoke-virtual {v2}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->getCurrent()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 149
    return-object v0
.end method

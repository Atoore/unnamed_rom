.class public Lcom/android/mms/ui/MessagePickerDialog;
.super Landroid/app/Dialog;
.source "MessagePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;,
        Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;
    }
.end annotation


# static fields
.field private static mRangeMax:I

.field private static mRangeMin:I


# instance fields
.field private final mButtonKeyListener:Landroid/text/method/KeyListener;

.field private final mCallback:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mLocale:Ljava/lang/String;

.field private mNegativeButton:Landroid/widget/Button;

.field private final mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

.field private mPositiveButton:Landroid/widget/Button;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;IIIILjava/lang/String;I)V
    .locals 9
    .parameter "context"
    .parameter "theme"
    .parameter "callBack"
    .parameter "number"
    .parameter "rangeMin"
    .parameter "rangeMax"
    .parameter "title_id"
    .parameter "title_str"
    .parameter "title_icon"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 230
    new-instance v6, Lcom/android/mms/ui/MessagePickerDialog$3;

    invoke-direct {v6, p0}, Lcom/android/mms/ui/MessagePickerDialog$3;-><init>(Lcom/android/mms/ui/MessagePickerDialog;)V

    iput-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mButtonKeyListener:Landroid/text/method/KeyListener;

    .line 100
    iput-object p3, p0, Lcom/android/mms/ui/MessagePickerDialog;->mCallback:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

    .line 101
    const-string v6, "layout_inflater"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 103
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f030017

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 105
    .local v5, view:Landroid/view/View;
    const v6, 0x7f080060

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/mms/ui/MessagePickerDialog;->mTitle:Landroid/widget/TextView;

    .line 106
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 107
    .local v4, lc:Ljava/util/Locale;
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mLocale:Ljava/lang/String;

    .line 108
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mLocale:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->LanguageSize(Ljava/lang/String;)I

    move-result v3

    .line 109
    .local v3, language:I
    const/16 v6, 0xb

    if-ne v3, v6, :cond_0

    .line 110
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mTitle:Landroid/widget/TextView;

    const/4 v7, 0x2

    const/high16 v8, 0x4198

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 111
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mTitle:Landroid/widget/TextView;

    const v7, 0x3f59999a

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 122
    :goto_0
    const v6, 0x7f080065

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/mms/ui/MessagePickerDialog;->mPositiveButton:Landroid/widget/Button;

    .line 123
    const v6, 0x7f080066

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNegativeButton:Landroid/widget/Button;

    .line 124
    const v6, 0x7f08005f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/mms/ui/MessagePickerDialog;->mTitleIcon:Landroid/widget/ImageView;

    .line 126
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mTitle:Landroid/widget/TextView;

    move-object v0, v6

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mPositiveButton:Landroid/widget/Button;

    const v7, 0x7f09006b

    invoke-virtual {p1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNegativeButton:Landroid/widget/Button;

    const v7, 0x7f09006a

    invoke-virtual {p1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mTitleIcon:Landroid/widget/ImageView;

    move-object v0, v6

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    const v6, 0x7f080062

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    iput-object p2, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    .line 132
    sput p6, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMax:I

    .line 133
    sput p5, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMin:I

    .line 136
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;->twSetMaxInputLength(I)V

    .line 137
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    mul-int/lit8 v7, p6, 0xa

    invoke-virtual {v6, p5, v7}, Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;->setRange(II)V

    .line 138
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    invoke-virtual {v6, p4}, Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;->setCurrent(I)V

    .line 139
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    const-wide/16 v7, 0x96

    invoke-virtual {v6, v7, v8}, Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;->setSpeed(J)V

    .line 140
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "input_method"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    iput-object p2, p0, Lcom/android/mms/ui/MessagePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 141
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagePickerDialog;->requestWindowFeature(I)Z

    .line 142
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const v7, 0x7f070007

    invoke-virtual {v6, v7}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 143
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessagePickerDialog;->setContentView(Landroid/view/View;)V

    .line 145
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mPositiveButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/mms/ui/MessagePickerDialog;->mButtonKeyListener:Landroid/text/method/KeyListener;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 147
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mPositiveButton:Landroid/widget/Button;

    new-instance v7, Lcom/android/mms/ui/MessagePickerDialog$1;

    invoke-direct {v7, p0, p1}, Lcom/android/mms/ui/MessagePickerDialog$1;-><init>(Lcom/android/mms/ui/MessagePickerDialog;Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNegativeButton:Landroid/widget/Button;

    new-instance v7, Lcom/android/mms/ui/MessagePickerDialog$2;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/MessagePickerDialog$2;-><init>(Lcom/android/mms/ui/MessagePickerDialog;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNegativeButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/mms/ui/MessagePickerDialog;->mButtonKeyListener:Landroid/text/method/KeyListener;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 184
    return-void

    .line 112
    :cond_0
    const/16 v6, 0xc

    if-eq v3, v6, :cond_1

    const/16 v6, 0x14

    if-ne v3, v6, :cond_2

    .line 113
    :cond_1
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mTitle:Landroid/widget/TextView;

    const/4 v7, 0x2

    const/high16 v8, 0x4194

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 114
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mTitle:Landroid/widget/TextView;

    const v7, 0x3f4ccccd

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto/16 :goto_0

    .line 115
    :cond_2
    const/4 v6, 0x3

    if-ne v3, v6, :cond_3

    .line 116
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mTitle:Landroid/widget/TextView;

    const/4 v7, 0x2

    const/high16 v8, 0x4194

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 117
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mTitle:Landroid/widget/TextView;

    const v7, 0x3f59999a

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto/16 :goto_0

    .line 119
    :cond_3
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mTitle:Landroid/widget/TextView;

    const/4 v7, 0x2

    const/high16 v8, 0x41a0

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 120
    iget-object v6, p0, Lcom/android/mms/ui/MessagePickerDialog;->mTitle:Landroid/widget/TextView;

    const/high16 v7, 0x3f80

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;IIIILjava/lang/String;I)V
    .locals 10
    .parameter "context"
    .parameter "numberSetListener"
    .parameter "number"
    .parameter "rangeMin"
    .parameter "rangeMax"
    .parameter "title_id"
    .parameter "title_str"
    .parameter "title_icon"

    .prologue
    .line 87
    const v2, 0x103000b

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/mms/ui/MessagePickerDialog;-><init>(Landroid/content/Context;ILcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;IIIILjava/lang/String;I)V

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessagePickerDialog;)Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMin:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessagePickerDialog;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/mms/ui/MessagePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMax:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MessagePickerDialog;)Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/mms/ui/MessagePickerDialog;->mCallback:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

    return-object v0
.end method


# virtual methods
.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 195
    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 196
    const-string v1, "number"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 197
    .local v0, number:I
    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;->setCurrent(I)V

    .line 198
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 188
    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 189
    .local v0, state:Landroid/os/Bundle;
    const-string v1, "number"

    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;->getCurrent()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 190
    return-object v0
.end method

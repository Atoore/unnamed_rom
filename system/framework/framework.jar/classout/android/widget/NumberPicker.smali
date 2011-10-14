.class public Landroid/widget/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/NumberPicker$NumberRangeKeyListener;,
        Landroid/widget/NumberPicker$NumberPickerInputFilter;,
        Landroid/widget/NumberPicker$Formatter;,
        Landroid/widget/NumberPicker$OnChangedListener;
    }
.end annotation


# static fields
.field private static final DIGIT_CHARACTERS:[C

.field public static final TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;


# instance fields
.field private mCurrent:I

.field private mDecrement:Z

.field private mDecrementButton:Landroid/widget/NumberPickerButton;

.field private mDisplayedValues:[Ljava/lang/String;

.field private mEnd:I

.field private mFormatter:Landroid/widget/NumberPicker$Formatter;

.field private final mHandler:Landroid/os/Handler;

.field private mIncrement:Z

.field private mIncrementButton:Landroid/widget/NumberPickerButton;

.field private mListener:Landroid/widget/NumberPicker$OnChangedListener;

.field private final mNumberInputFilter:Landroid/text/InputFilter;

.field private mPrevious:I

.field private final mRunnable:Ljava/lang/Runnable;

.field private mSpeed:J

.field private mStart:I

.field private final mText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 76
    new-instance v0, Landroid/widget/NumberPicker$1;

    invoke-direct {v0}, Landroid/widget/NumberPicker$1;-><init>()V

    sput-object v0, Landroid/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    .line 507
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_12

    sput-object v0, Landroid/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-void

    nop

    :array_12
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 13
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 148
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    new-instance v5, Landroid/widget/NumberPicker$2;

    invoke-direct {v5, p0}, Landroid/widget/NumberPicker$2;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v5, p0, Landroid/widget/NumberPicker;->mRunnable:Ljava/lang/Runnable;

    .line 129
    const-wide/16 v5, 0x12c

    iput-wide v5, p0, Landroid/widget/NumberPicker;->mSpeed:J

    .line 149
    invoke-virtual {p0, v8}, Landroid/widget/NumberPicker;->setOrientation(I)V

    .line 150
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 152
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x1090047

    invoke-virtual {v2, v5, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 153
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Landroid/widget/NumberPicker;->mHandler:Landroid/os/Handler;

    .line 155
    new-instance v0, Landroid/widget/NumberPicker$3;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$3;-><init>(Landroid/widget/NumberPicker;)V

    .line 170
    .local v0, clickListener:Landroid/view/View$OnClickListener;
    new-instance v1, Landroid/widget/NumberPicker$4;

    invoke-direct {v1, p0}, Landroid/widget/NumberPicker$4;-><init>(Landroid/widget/NumberPicker;)V

    .line 191
    .local v1, focusListener:Landroid/view/View$OnFocusChangeListener;
    new-instance v4, Landroid/widget/NumberPicker$5;

    invoke-direct {v4, p0}, Landroid/widget/NumberPicker$5;-><init>(Landroid/widget/NumberPicker;)V

    .line 214
    .local v4, longClickListener:Landroid/view/View$OnLongClickListener;
    new-instance v3, Landroid/widget/NumberPicker$NumberPickerInputFilter;

    invoke-direct {v3, p0, v9}, Landroid/widget/NumberPicker$NumberPickerInputFilter;-><init>(Landroid/widget/NumberPicker;Landroid/widget/NumberPicker$1;)V

    .line 215
    .local v3, inputFilter:Landroid/text/InputFilter;
    new-instance v5, Landroid/widget/NumberPicker$NumberRangeKeyListener;

    invoke-direct {v5, p0, v9}, Landroid/widget/NumberPicker$NumberRangeKeyListener;-><init>(Landroid/widget/NumberPicker;Landroid/widget/NumberPicker$1;)V

    iput-object v5, p0, Landroid/widget/NumberPicker;->mNumberInputFilter:Landroid/text/InputFilter;

    .line 216
    const v5, 0x1020226

    invoke-virtual {p0, v5}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/NumberPickerButton;

    iput-object v5, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/NumberPickerButton;

    .line 217
    iget-object v5, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/NumberPickerButton;

    invoke-virtual {v5, v0}, Landroid/widget/NumberPickerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v5, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/NumberPickerButton;

    invoke-virtual {v5, v4}, Landroid/widget/NumberPickerButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 219
    iget-object v5, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/NumberPickerButton;

    invoke-virtual {v5, p0}, Landroid/widget/NumberPickerButton;->setNumberPicker(Landroid/widget/NumberPicker;)V

    .line 221
    const v5, 0x1020228

    invoke-virtual {p0, v5}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/NumberPickerButton;

    iput-object v5, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/NumberPickerButton;

    .line 222
    iget-object v5, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/NumberPickerButton;

    invoke-virtual {v5, v0}, Landroid/widget/NumberPickerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v5, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/NumberPickerButton;

    invoke-virtual {v5, v4}, Landroid/widget/NumberPickerButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 224
    iget-object v5, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/NumberPickerButton;

    invoke-virtual {v5, p0}, Landroid/widget/NumberPickerButton;->setNumberPicker(Landroid/widget/NumberPicker;)V

    .line 226
    const v5, 0x1020227

    invoke-virtual {p0, v5}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    .line 227
    iget-object v5, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 228
    iget-object v5, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    new-array v6, v8, [Landroid/text/InputFilter;

    aput-object v3, v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 229
    iget-object v5, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 231
    iget-object v5, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    const/high16 v6, -0x8000

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 232
    iget-object v5, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    new-instance v6, Landroid/widget/NumberPicker$6;

    invoke-direct {v6, p0}, Landroid/widget/NumberPicker$6;-><init>(Landroid/widget/NumberPicker;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 240
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_b3

    .line 241
    invoke-virtual {p0, v7}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 254
    :cond_b3
    iget-object v5, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->showCursorController(Z)V

    .line 255
    return-void
.end method

.method static synthetic access$000(Landroid/widget/NumberPicker;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/NumberPicker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mIncrement:Z

    return v0
.end method

.method static synthetic access$102(Landroid/widget/NumberPicker;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Landroid/widget/NumberPicker;->mIncrement:Z

    return p1
.end method

.method static synthetic access$1200(Landroid/widget/NumberPicker;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/widget/NumberPicker;)Landroid/text/InputFilter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Landroid/widget/NumberPicker;->mNumberInputFilter:Landroid/text/InputFilter;

    return-object v0
.end method

.method static synthetic access$1400()[C
    .registers 1

    .prologue
    .line 49
    sget-object v0, Landroid/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$1500(Landroid/widget/NumberPicker;Ljava/lang/String;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/NumberPicker;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/NumberPicker;->checkFilterValue(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Landroid/widget/NumberPicker;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Landroid/widget/NumberPicker;->mEnd:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/NumberPicker;)Landroid/widget/NumberPickerButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/NumberPickerButton;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/NumberPicker;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Landroid/widget/NumberPicker;->mCurrent:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/NumberPicker;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 49
    iget-wide v0, p0, Landroid/widget/NumberPicker;->mSpeed:J

    return-wide v0
.end method

.method static synthetic access$500(Landroid/widget/NumberPicker;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Landroid/widget/NumberPicker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/NumberPicker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mDecrement:Z

    return v0
.end method

.method static synthetic access$602(Landroid/widget/NumberPicker;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Landroid/widget/NumberPicker;->mDecrement:Z

    return p1
.end method

.method static synthetic access$700(Landroid/widget/NumberPicker;)Landroid/widget/NumberPickerButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/NumberPickerButton;

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/NumberPicker;Landroid/view/View;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->validateInput(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$900(Landroid/widget/NumberPicker;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Landroid/widget/NumberPicker;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private checkFilterValue(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 6
    .parameter "filtered"
    .parameter "result"

    .prologue
    .line 602
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 603
    .local v0, inputStringSize:I
    iget v2, p0, Landroid/widget/NumberPicker;->mEnd:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 605
    .local v1, maxSize:I
    if-le v0, v1, :cond_13

    .line 606
    const-string v2, ""

    .line 608
    :goto_12
    return-object v2

    :cond_13
    move-object v2, p1

    goto :goto_12
.end method

.method private formatNumber(I)Ljava/lang/String;
    .registers 3
    .parameter "value"

    .prologue
    .line 401
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    invoke-interface {v0, p1}, Landroid/widget/NumberPicker$Formatter;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .registers 4
    .parameter "str"

    .prologue
    .line 611
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_9

    .line 613
    :try_start_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_7} :catch_2d

    move-result v1

    .line 636
    :goto_8
    return v1

    .line 618
    :cond_9
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_28

    .line 620
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 621
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 622
    iget v1, p0, Landroid/widget/NumberPicker;->mStart:I

    add-int/2addr v1, v0

    goto :goto_8

    .line 618
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 630
    :cond_28
    :try_start_28
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_2b} :catch_31

    move-result v1

    goto :goto_8

    .line 614
    .end local v0           #i:I
    :catch_2d
    move-exception v1

    .line 636
    :goto_2e
    iget v1, p0, Landroid/widget/NumberPicker;->mStart:I

    goto :goto_8

    .line 631
    .restart local v0       #i:I
    :catch_31
    move-exception v1

    goto :goto_2e
.end method

.method private notifyChange()V
    .registers 4

    .prologue
    .line 435
    iget-object v0, p0, Landroid/widget/NumberPicker;->mListener:Landroid/widget/NumberPicker$OnChangedListener;

    if-eqz v0, :cond_d

    .line 436
    iget-object v0, p0, Landroid/widget/NumberPicker;->mListener:Landroid/widget/NumberPicker$OnChangedListener;

    iget v1, p0, Landroid/widget/NumberPicker;->mPrevious:I

    iget v2, p0, Landroid/widget/NumberPicker;->mCurrent:I

    invoke-interface {v0, p0, v1, v2}, Landroid/widget/NumberPicker$OnChangedListener;->onChanged(Landroid/widget/NumberPicker;II)V

    .line 438
    :cond_d
    return-void
.end method

.method private updateView()V
    .registers 5

    .prologue
    .line 451
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_1f

    .line 452
    iget-object v0, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    iget v1, p0, Landroid/widget/NumberPicker;->mCurrent:I

    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 456
    :goto_f
    iget-object v0, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 457
    return-void

    .line 454
    :cond_1f
    iget-object v0, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    iget v2, p0, Landroid/widget/NumberPicker;->mCurrent:I

    iget v3, p0, Landroid/widget/NumberPicker;->mStart:I

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f
.end method

.method private validateCurrentView(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "str"

    .prologue
    .line 460
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    .line 472
    .local v0, val:I
    iget v1, p0, Landroid/widget/NumberPicker;->mStart:I

    if-lt v0, v1, :cond_19

    iget v1, p0, Landroid/widget/NumberPicker;->mEnd:I

    if-gt v0, v1, :cond_19

    .line 473
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrent:I

    iput v1, p0, Landroid/widget/NumberPicker;->mPrevious:I

    .line 474
    iput v0, p0, Landroid/widget/NumberPicker;->mCurrent:I

    .line 475
    invoke-direct {p0}, Landroid/widget/NumberPicker;->notifyChange()V

    .line 477
    :cond_19
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateView()V

    .line 478
    return-void
.end method

.method private validateInput(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 481
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 482
    .local v0, str:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 485
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateView()V

    .line 491
    :goto_15
    return-void

    .line 489
    :cond_16
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->validateCurrentView(Ljava/lang/CharSequence;)V

    goto :goto_15
.end method


# virtual methods
.method public cancelDecrement()V
    .registers 2

    .prologue
    .line 504
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/NumberPicker;->mDecrement:Z

    .line 505
    return-void
.end method

.method public cancelIncrement()V
    .registers 2

    .prologue
    .line 497
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/NumberPicker;->mIncrement:Z

    .line 498
    return-void
.end method

.method protected changeCurrent(I)V
    .registers 4
    .parameter "current"

    .prologue
    .line 417
    iget v0, p0, Landroid/widget/NumberPicker;->mEnd:I

    if-le p1, v0, :cond_1f

    .line 418
    iget p1, p0, Landroid/widget/NumberPicker;->mStart:I

    .line 422
    :cond_6
    :goto_6
    iget v0, p0, Landroid/widget/NumberPicker;->mCurrent:I

    iput v0, p0, Landroid/widget/NumberPicker;->mPrevious:I

    .line 423
    iput p1, p0, Landroid/widget/NumberPicker;->mCurrent:I

    .line 424
    invoke-direct {p0}, Landroid/widget/NumberPicker;->notifyChange()V

    .line 425
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateView()V

    .line 426
    iget-object v0, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 427
    iget-object v0, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 428
    return-void

    .line 419
    :cond_1f
    iget v0, p0, Landroid/widget/NumberPicker;->mStart:I

    if-ge p1, v0, :cond_6

    .line 420
    iget p1, p0, Landroid/widget/NumberPicker;->mEnd:I

    goto :goto_6
.end method

.method protected getBeginRange()I
    .registers 2

    .prologue
    .line 660
    iget v0, p0, Landroid/widget/NumberPicker;->mStart:I

    return v0
.end method

.method public getCurrent()I
    .registers 2

    .prologue
    .line 644
    iget v0, p0, Landroid/widget/NumberPicker;->mCurrent:I

    return v0
.end method

.method protected getEndRange()I
    .registers 2

    .prologue
    .line 652
    iget v0, p0, Landroid/widget/NumberPicker;->mEnd:I

    return v0
.end method

.method public getMText()Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 268
    iget-object v0, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    return-object v0
.end method

.method public setCurrent(I)V
    .registers 4
    .parameter "current"

    .prologue
    .line 374
    iget v0, p0, Landroid/widget/NumberPicker;->mStart:I

    if-lt p1, v0, :cond_8

    iget v0, p0, Landroid/widget/NumberPicker;->mEnd:I

    if-le p1, v0, :cond_10

    .line 375
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "current should be >= start and <= end"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_10
    iget v0, p0, Landroid/widget/NumberPicker;->mCurrent:I

    if-ne v0, p1, :cond_17

    if-eqz p1, :cond_17

    .line 387
    :goto_16
    return-void

    .line 385
    :cond_17
    iput p1, p0, Landroid/widget/NumberPicker;->mCurrent:I

    .line 386
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateView()V

    goto :goto_16
.end method

.method public setEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 295
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 296
    iget-object v0, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/NumberPickerButton;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPickerButton;->setEnabled(Z)V

    .line 297
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/NumberPickerButton;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPickerButton;->setEnabled(Z)V

    .line 298
    iget-object v0, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 299
    return-void
.end method

.method public setFormatter(Landroid/widget/NumberPicker$Formatter;)V
    .registers 2
    .parameter "formatter"

    .prologue
    .line 318
    iput-object p1, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    .line 319
    return-void
.end method

.method public setOnChangeListener(Landroid/widget/NumberPicker$OnChangedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 309
    iput-object p1, p0, Landroid/widget/NumberPicker;->mListener:Landroid/widget/NumberPicker$OnChangedListener;

    .line 310
    return-void
.end method

.method public setRange(II)V
    .registers 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 329
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/NumberPicker;->setRange(II[Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method public setRange(II[Ljava/lang/String;)V
    .registers 6
    .parameter "start"
    .parameter "end"
    .parameter "displayedValues"

    .prologue
    .line 342
    iput-object p3, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 343
    iput p1, p0, Landroid/widget/NumberPicker;->mStart:I

    .line 344
    iput p2, p0, Landroid/widget/NumberPicker;->mEnd:I

    .line 345
    iput p1, p0, Landroid/widget/NumberPicker;->mCurrent:I

    .line 346
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateView()V

    .line 348
    if-eqz p3, :cond_15

    .line 350
    iget-object v0, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 353
    :cond_15
    return-void
.end method

.method public setSpeed(J)V
    .registers 3
    .parameter "speed"

    .prologue
    .line 397
    iput-wide p1, p0, Landroid/widget/NumberPicker;->mSpeed:J

    .line 398
    return-void
.end method

.method public setStringMode(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    .line 301
    iget-object v0, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    if-eqz p1, :cond_9

    const/4 v1, 0x1

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 302
    return-void

    .line 301
    :cond_9
    const/4 v1, 0x2

    goto :goto_5
.end method

.method public twSetMaxInputLength(I)V
    .registers 8
    .parameter "limit"

    .prologue
    const/4 v5, 0x0

    .line 262
    iget-object v3, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v1

    .line 263
    .local v1, filterArr:[Landroid/text/InputFilter;
    aget-object v0, v1, v5

    .line 264
    .local v0, backupFilter:Landroid/text/InputFilter;
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 265
    .local v2, lengthFilter:Landroid/text/InputFilter;
    iget-object v3, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/text/InputFilter;

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 266
    return-void
.end method

.method public twSetMonthInputMode()V
    .registers 3

    .prologue
    .line 271
    iget-object v0, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    const/high16 v1, -0x8000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 272
    iget-object v0, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    const-string v1, "inputType=month_edittext"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 285
    return-void
.end method

.method public twSetRange(II)V
    .registers 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 362
    iput p1, p0, Landroid/widget/NumberPicker;->mStart:I

    .line 363
    iput p2, p0, Landroid/widget/NumberPicker;->mEnd:I

    .line 364
    return-void
.end method
